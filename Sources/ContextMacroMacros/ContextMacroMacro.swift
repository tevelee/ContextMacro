import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct ContextMacro: ExpressionMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        "Context(moduleName: #moduleName, fileName: #fileName, filePath: #filePath, function: #function, line: #line, column: #column)"
    }
}
