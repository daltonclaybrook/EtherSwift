import Foundation

enum GenerateContractsExecError: Error {
	case unexpectedArguments
}

struct Arguments {
	/// The file path of the JSON ABI input file
	let inputFilePath: String
	/// The file path of the Swift output file
	let outputFilePath: String
	/// The name of the contract
	let contractName: String
}

@main
struct GenerateContractsExec {
	/// Main entry point into executable
	static func main() throws {
		let arguments = try getArguments()
		print("Generating implementation for contract \(arguments.contractName)")

		let abi = try parseABI(path: arguments.inputFilePath)
		let generator = ContractGenerator()
		let fileContents = try generator.generateContractImplementation(name: arguments.contractName, abi: abi)
		try fileContents.write(toFile: arguments.outputFilePath, atomically: true, encoding: .utf8)
	}

	// MARK: - Private helpers

	private static func getArguments() throws -> Arguments {
		let arguments = ProcessInfo.processInfo.arguments
		guard arguments.count == 3 else {
			throw GenerateContractsExecError.unexpectedArguments
		}

		let contractName = arguments[2].bridge().lastPathComponent.bridge().deletingPathExtension
		return Arguments(
			inputFilePath: arguments[1],
			outputFilePath: arguments[2],
			contractName: contractName
		)
	}

	private static func parseABI(path: String) throws -> [ABI] {
		let abiFileURL: URL
		if #available(macOS 13.0, *) {
			abiFileURL = URL(filePath: path)
		} else {
			abiFileURL = URL(fileURLWithPath: path)
		}

		let abiFileData = try Data(contentsOf: abiFileURL)
		let decoder = JSONDecoder()
		return try decoder.decode([ABI].self, from: abiFileData)
	}
}

extension String {
	func bridge() -> NSString {
		self as NSString
	}
}
