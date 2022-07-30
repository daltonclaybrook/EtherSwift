import Foundation
import PackagePlugin

enum GenerateContractsError: Error {
	case failedToEnumerateTargetFiles
}

/// Plugin used to generate Swift implementations of Ethereum smart contracts by parsing the compiled
/// contract ABI json.
///
/// For a JSON file to be recognized as containing a contract ABI, either:
///
/// * It must be the immediate child of a folder called "ABI", e.g. `MyApp/ABI/MyToken.json`
/// * It must have a file suffix of ".abi.json", e.g. `MyToken.abi.json`
///
/// In either case, the file name is expected to contain the name of the contract.
@main struct GenerateContracts: BuildToolPlugin {
	func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
		guard let target = target as? SourceModuleTarget else {
			print("This plugin only works with source module targets")
			return []
		}

		let executable = try context.tool(named: "GenerateContractsExec").path
		return target.sourceFiles(withSuffix: "json").compactMap { file -> Command? in
			guard let contractName = contractNameFromABI(file: file) else { return nil }
			let abiJSONPath = file.path
			let swiftContractPath = context.pluginWorkDirectory.appending(["\(contractName).swift"])
			return .buildCommand(
				displayName: "Generating contract for \(contractName)",
				executable: executable,
				arguments: [abiJSONPath.string, swiftContractPath.string],
				inputFiles: [abiJSONPath],
				outputFiles: [swiftContractPath]
			)
		}
	}

	// MARK: - Private helpers

	/// Returns the name of the contract from the provided ABI file, or returns nil if the file path is not
	/// considered a valid ABI file path.
	private func contractNameFromABI(file: File) -> String? {
		let nameComponents = file.path.lastComponent.components(separatedBy: ".")
		if nameComponents.count == 3 && nameComponents[1] == "abi" && nameComponents[2] == "json" {
			/// This file name matches the expected pattern: `ContractName.abi.json`
			return nameComponents[0]
		}

		let pathComponents = file.path.string.components(separatedBy: "/")
		if pathComponents.count >= 2 && pathComponents[pathComponents.count - 2] == "ABI" && nameComponents.count == 2 && nameComponents[1] == "json" {
			/// This file name matches the expected pattern: `/path/to/ABI/ContractName.json`
			return nameComponents[0]
		}

		return nil
	}
}
