@freestanding(expression)
public macro context() -> Context = #externalMacro(module: "ContextMacroMacros", type: "ContextMacro")

@freestanding(expression)
public macro fileName() -> String = #externalMacro(module: "ContextMacroMacros", type: "FileNameMacro")

@freestanding(expression)
public macro moduleName() -> String = #externalMacro(module: "ContextMacroMacros", type: "ModuleNameMacro")
