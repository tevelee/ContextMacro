public struct Context: Sendable, Equatable, Hashable, Codable {
    public let moduleName: String
    public let fileName: String
    public let filePath: String
    public let function: String
    public let line: Int
    public let column: Int

    public init(
        moduleName: String = #moduleName,
        fileName: String = #fileName,
        filePath: String = #filePath,
        function: String = #function,
        line: Int = #line,
        column: Int = #column
    ) {
        self.moduleName = moduleName
        self.fileName = fileName
        self.filePath = filePath
        self.function = function
        self.line = line
        self.column = column
    }
}

extension Context: CustomStringConvertible {
    public var description: String {
        "\(fileName):\(line):\(column)"
    }
}

extension Context: CustomDebugStringConvertible {
    public var debugDescription: String {
        "\(moduleName)/\(description)"
    }
}
