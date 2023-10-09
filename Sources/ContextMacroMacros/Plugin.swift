import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct ContextMacroPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ContextMacro.self,
        FileNameMacro.self,
        ModuleNameMacro.self
    ]
}
