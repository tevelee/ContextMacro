import ContextMacro

dump(#context)
// ▿ ContextMacroClient/main.swift:3:6
//   - moduleName: "ContextMacroClient"
//   - fileName: "main.swift"
//   - filePath: "{path}/Sources/ContextMacroClient/main.swift"
//   - function: "ContextMacroClient"
//   - line: 3
//   - column: 6

func x(context: Context = #context) {
    dump(context)
}
x() // won't propagate function/line/column info to callsite 😢
// ▿ ContextMacroClient/main.swift:12:27
//   - moduleName: "ContextMacroClient"
//   - fileName: "main.swift"
//   - filePath: "{path}/Sources/ContextMacroClient/main.swift"
//   - function: "x(context:)"
//   - line: 12
//   - column: 27
