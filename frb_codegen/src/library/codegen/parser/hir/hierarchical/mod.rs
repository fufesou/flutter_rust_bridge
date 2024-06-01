use crate::codegen::ir::hir::hierarchical::crates::HirCrate;
use crate::codegen::ir::hir::hierarchical::module::{HirModuleMeta, HirVisibility};
use crate::codegen::ir::mir::namespace::Namespace;
use crate::codegen::parser::hir::hierarchical::module::parse_module;
use crate::codegen::parser::hir::internal_config::ParserHirInternalConfig;

pub(crate) mod function;
pub(crate) mod item_type;
pub(crate) mod mirror_ident;
pub(crate) mod module;
pub(crate) mod struct_or_enum;
pub(crate) mod visibility;

pub(crate) fn parse(
    config: &ParserHirInternalConfig,
    file: &syn::File,
) -> anyhow::Result<HirCrate> {
    let info = HirModuleMeta {
        visibility: HirVisibility::Public,
        namespace: Namespace::new(vec![Namespace::SELF_CRATE.to_owned()]),
    };
    let root_module = parse_module(&file.items, info, config)?;
    Ok(HirCrate { root_module })
}