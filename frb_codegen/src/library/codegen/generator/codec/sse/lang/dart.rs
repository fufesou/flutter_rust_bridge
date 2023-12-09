use crate::codegen::generator::codec::sse::lang::LangTrait;
use crate::codegen::ir::ty::IrType;
use crate::library::codegen::ir::ty::IrTypeTrait;
use itertools::{multizip, Itertools};

#[derive(Clone, Copy, Debug)]
pub(crate) struct DartLang;

impl LangTrait for DartLang {
    fn call_encode(&self, var_ty: &IrType, var_name: &str) -> String {
        format!(
            "_sse_encode_{}({}, serializer)",
            var_ty.safe_ident(),
            var_name
        )
    }

    fn call_decode(&self, var_ty: &IrType) -> String {
        format!("_sse_decode_{}(serializer)", var_ty.safe_ident(),)
    }

    fn call_constructor(
        &self,
        class_name: &str,
        field_names: &[String],
        var_names: &[String],
    ) -> String {
        format!(
            "{class_name}({})",
            multizip((field_names, var_names))
                .map(|(x, y)| format!("{x}: {y}"))
                .join(", ")
        )
    }

    fn throw_unimplemented(&self) -> String {
        "throw UnimplementedError('')".into()
    }

    fn for_loop(&self, lhs: &str, rhs: &str, body: &str) -> String {
        format!("for (final {lhs} in {rhs}) {{ {body} }}")
    }

    fn null(&self) -> &'static str {
        "null"
    }

    fn var_decl(&self) -> &'static str {
        "var"
    }
}
