use crate::Result;
use cargo_metadata::VersionReq;
use lazy_static::lazy_static;
use log::warn;
use std::collections::HashMap;
use std::env;
use std::fmt::Write;
use std::fs;
use std::path::Path;
use std::path::PathBuf;
use std::str::FromStr;
use std::sync::Mutex;

use crate::command_run;
use crate::utils::command_runner::{call_shell, execute_command};
use crate::utils::dart_repository::dart_repo::{DartDependencyMode, DartRepository};
use log::{debug, info};

mod error;
pub use error::Error;
pub(crate) type CommandResult<T = (), E = Error> = core::result::Result<T, E>;

lazy_static! {
    pub(crate) static ref FFI_REQUIREMENT: VersionReq =
        VersionReq::parse(">= 2.0.1, < 3.0.0").unwrap();
    pub(crate) static ref FFIGEN_REQUIREMENT: VersionReq =
        VersionReq::parse(">= 8.0.0, < 10.0.0").unwrap();
}

pub fn ensure_tools_available(dart_root: &str, skip_deps_check: bool) -> Result<(), Error> {
    let repo = DartRepository::from_str(dart_root)?;
    if !repo.toolchain_available() {
        Err(Error::MissingExe(repo.toolchain.to_string()))?;
    }

    if !skip_deps_check {
        repo.has_specified("ffi", DartDependencyMode::Main, &FFI_REQUIREMENT)?;
        repo.has_installed("ffi", DartDependencyMode::Main, &FFI_REQUIREMENT)?;

        repo.has_specified("ffigen", DartDependencyMode::Dev, &FFIGEN_REQUIREMENT)?;
        repo.has_installed("ffigen", DartDependencyMode::Dev, &FFIGEN_REQUIREMENT)?;
    }

    Ok(())
}

pub(crate) struct BindgenRustToDartArg<'a> {
    pub rust_crate_dir: &'a str,
    pub c_output_path: &'a str,
    pub dart_output_path: &'a str,
    pub dart_class_name: &'a str,
    pub c_struct_names: Vec<String>,
    pub exclude_symbols: Vec<String>,
    pub extra_forward_declarations: Vec<String>,
    pub llvm_install_path: &'a [String],
    pub llvm_compiler_opts: &'a str,
}

pub(crate) fn bindgen_rust_to_dart(
    arg: BindgenRustToDartArg,
    dart_root: &str,
) -> CommandResult<()> {
    cbindgen(
        arg.rust_crate_dir,
        arg.c_output_path,
        arg.c_struct_names,
        arg.exclude_symbols,
        arg.extra_forward_declarations,
    )?;
    ffigen(
        arg.c_output_path,
        arg.dart_output_path,
        arg.dart_class_name,
        arg.llvm_install_path,
        arg.llvm_compiler_opts,
        dart_root,
    )
}

fn cbindgen(
    rust_crate_dir: &str,
    c_output_path: &str,
    c_struct_names: Vec<String>,
    exclude_symbols: Vec<String>,
    extra_forward_definitions: Vec<String>,
) -> CommandResult {
    let mut declarations = "".to_string();
    declarations += extra_forward_definitions
        .iter()
        .map(|s| format!("\n{};", s))
        .collect::<String>()
        .as_str();
    declarations.push_str("\n\ntypedef struct _Dart_Handle* Dart_Handle;"); // copied from `dart-sdk/dart_api.h`, to convert Dart_Handle to Object.
    debug!(
        "execute cbindgen rust_crate_dir={} c_output_path={}",
        rust_crate_dir, c_output_path
    );
    let cbindgen_config = cbindgen::Config {
        language: cbindgen::Language::C,
        header: Some("#pragma once\n".to_owned()),
        sys_includes: vec![
            "stdbool.h".to_string(),
            "stdint.h".to_string(),
            "stdlib.h".to_string(),
        ],
        no_includes: true,
        after_includes: Some(declarations),
        export: cbindgen::ExportConfig {
            include: c_struct_names
                .iter()
                .map(|name| format!("\"{name}\""))
                .collect(),
            exclude: exclude_symbols,
            ..Default::default()
        },
        ..Default::default()
    };

    debug!("cbindgen config: {:#?}", cbindgen_config);

    let canonical = Path::new(rust_crate_dir).canonicalize()?;
    let mut path = canonical.to_str().unwrap();

    // on windows get rid of the UNC path
    if path.starts_with(r"\\?\") {
        path = &path[r"\\?\".len()..];
    }
    if cbindgen::generate_with_config(path, cbindgen_config)?.write_to_file(c_output_path) {
        Ok(())
    } else {
        Err(anyhow::anyhow!("cbindgen failed writing file"))?
    }
}

fn ffigen(
    c_path: &str,
    dart_path: &str,
    dart_class_name: &str,
    llvm_path: &[String],
    llvm_compiler_opts: &str,
    dart_root: &str,
) -> CommandResult {
    debug!(
        "execute ffigen c_path={} dart_path={} llvm_path={:?}",
        c_path, dart_path, llvm_path
    );
    let mut config = format!(
        "
        output: '{dart_path}'
        name: '{dart_class_name}'
        description: 'generated by flutter_rust_bridge'
        headers:
          entry-points:
            - '{c_path}'
          include-directives:
            - '{c_path}'
        comments: false
        preamble: |
          // ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names
        "
    );
    if !llvm_path.is_empty() {
        write!(
            &mut config,
            "
        llvm-path:\n"
        )?;
        for path in llvm_path {
            writeln!(&mut config, "           - '{path}'")?;
        }
    }

    if !llvm_compiler_opts.is_empty() {
        config = format!(
            "{config}
        compiler-opts:
            - '{llvm_compiler_opts}'"
        );
    }

    debug!("ffigen config: {}", config);

    let mut config_file = tempfile::NamedTempFile::new()?;
    std::io::Write::write_all(&mut config_file, config.as_bytes())?;
    debug!("ffigen config_file: {:?}", config_file);
    let repo = DartRepository::from_str(dart_root).unwrap();
    let res = command_run!(
        call_shell[Some(dart_root)],
        *repo.toolchain.as_run_command(),
        "run",
        "ffigen",
        "--config",
        config_file.path()
    )?;

    if !res.status.success() {
        let err = String::from_utf8_lossy(&res.stderr);
        let out = String::from_utf8_lossy(&res.stdout);
        let pat = "Couldn't find dynamic library in default locations.";
        if err.contains(pat) || out.contains(pat) {
            return Err(Error::FfigenLlvm);
        }
        Err(anyhow::anyhow!(
            "ffigen failed:\nstderr: {err}\nstdout: {out}"
        ))?;
    }
    Ok(())
}

pub fn format_rust(path: &[PathBuf]) -> Result {
    debug!("execute format_rust path={:?}", path);
    let res = execute_command("rustfmt", path, None)?;
    if !res.status.success() {
        return Err(Error::Rustfmt(String::from_utf8_lossy(&res.stderr).to_string()).into());
    }
    Ok(())
}

pub fn format_dart(path: &[PathBuf], line_length: u32) -> Result {
    debug!(
        "execute format_dart path={:?} line_length={}",
        path, line_length
    );
    let res = command_run!(
        call_shell[None],
        "dart",
        "format",
        "--line-length",
        line_length.to_string(),
        *path
    )?;
    if !res.status.success() {
        Err(Error::Dartfmt(
            String::from_utf8_lossy(&res.stderr).to_string(),
        ))?;
    }
    Ok(())
}

pub fn build_runner(dart_root: &str) -> Result {
    info!("Running build_runner at {}", dart_root);
    let repo = DartRepository::from_str(dart_root).unwrap();
    let out = command_run!(
        call_shell[Some(dart_root)],
        *repo.toolchain.as_run_command(),
        "run",
        "build_runner",
        "build",
        "--delete-conflicting-outputs",
        "--enable-experiment=class-modifiers",
    )?;
    if !out.status.success() {
        Err(anyhow::anyhow!(
            "Failed to run build_runner for {}: {}",
            dart_root,
            String::from_utf8_lossy(&out.stdout)
        ))?;
    }
    Ok(())
}

lazy_static! {
    static ref CACHE: Mutex<HashMap<String, String>> = Mutex::new(HashMap::new());
}

pub fn cargo_expand(dir: &str, module: Option<String>, file: &str) -> String {
    let manifest_dir = env::var("CARGO_MANIFEST_DIR").unwrap_or_default();
    #[cfg(windows)]
    let manifest_dir = &manifest_dir.replace('\\', "/");
    if !manifest_dir.is_empty() && dir == manifest_dir {
        warn!(
            "can not run cargo expand on {dir} because cargo is already running and would block cargo-expand. This might cause errors if your api contains macros."
        );
        return fs::read_to_string(file).unwrap_or_default();
    }
    let mut cache = CACHE.lock().unwrap();
    let expanded = cache
        .entry(String::from(dir))
        .or_insert_with(|| run_cargo_expand(dir));
    extract_module(expanded, module)
}

fn extract_module(expanded: &str, module: Option<String>) -> String {
    if let Some(module) = module {
        let (_, expanded) = module
            .split("::")
            .fold((0, expanded), |(spaces, expanded), module| {
                let searched = format!("mod {module} {{\n");
                let start = expanded
                    .find(&searched)
                    .map(|n| n + searched.len())
                    .unwrap_or_default();
                if start == 0 {
                    return (spaces, expanded);
                }
                let end = expanded[start..]
                    .find(&format!("\n{}}}", " ".repeat(spaces)))
                    .map(|n| n + start)
                    .unwrap_or(expanded.len());
                (spaces + 4, &expanded[start..end])
            });
        return String::from(expanded);
    }
    String::from(expanded)
}

fn run_cargo_expand(dir: &str) -> String {
    info!("Running cargo expand in '{dir}'");
    let args = vec![
        PathBuf::from("expand"),
        PathBuf::from("--theme=none"),
        PathBuf::from("--ugly"),
    ];
    match execute_command("cargo", &args, Some(dir)) {
        Ok(output) => {
            let stdout = String::from_utf8(output.stdout).unwrap_or_default();
            let stderr = String::from_utf8(output.stderr).unwrap_or_default();
            if stdout.is_empty() {
                if stderr.contains("no such command: `expand`") {
                    panic!(
                        "cargo expand is not installed. Please run  `cargo install cargo-expand`"
                    );
                }
                panic!("cargo expand returned empty output");
            }
            // remove first and last line to get rid of wrapping module
            let mut output = stdout.lines();
            output.next();
            output
                .collect::<Vec<_>>()
                .join("\n")
                .replace("/// frb_marker: ", "")
        }
        Err(e) => {
            panic!("Could not expand rust code at path {}: {}\n", dir, e);
        }
    }
}

#[cfg(test)]
mod tests {
    use super::extract_module;

    #[test]
    pub fn extract_mod() {
        let src = "mod module_1 {
    // code 1
}
mod module_2 {
    // code 2
}";
        let extracted = extract_module(src, Some(String::from("module_1")));
        assert_eq!(String::from("    // code 1"), extracted);
        let extracted = extract_module(src, Some(String::from("module_2")));
        assert_eq!(String::from("    // code 2"), extracted);
    }

    #[test]
    pub fn extract_submod() {
        let src = "mod module {
    mod submodule {
        // sub code
    }
}";
        let extracted = extract_module(src, Some(String::from("module::submodule")));
        assert_eq!(String::from("        // sub code"), extracted);
    }
}
