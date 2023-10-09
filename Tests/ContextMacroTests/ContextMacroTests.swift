import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import MacroTesting

#if canImport(ContextMacroMacros)
import ContextMacroMacros

let testMacros: [String: Macro.Type] = [
    "context": ContextMacro.self,
    "fileName": FileNameMacro.self,
    "moduleName": ModuleNameMacro.self,
]
#endif

final class ContextMacroTests: XCTestCase {
    override func invokeTest() {
        withMacroTesting(macros: testMacros) {
            super.invokeTest()
        }
    }

    func testContextMacro() throws {
        #if canImport(ContextMacroMacros)
        assertMacro {
            """
            #context
            """
        } expansion: {
            """
            Context()
            """
        }
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func testFileNameMacro() throws {
        #if canImport(ContextMacroMacros)
        assertMacro {
            """
            #fileName
            """
        } expansion: {
            """
            String(#fileID.split(separator: "/") [1])
            """
        }
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func testModuleNameMacro() throws {
        #if canImport(ContextMacroMacros)
        assertMacro {
            """
            #moduleName
            """
        } expansion: {
            """
            String(#fileID.split(separator: "/") [0])
            """
        }
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }
}
