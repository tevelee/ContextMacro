import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ModuleNameMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        #"String(#fileID.split(separator: "/")[0])"#
    }
}
