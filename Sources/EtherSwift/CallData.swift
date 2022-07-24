import CryptoSwift

/// Information about a function in a Solidity smart contract
struct ContractFunction {
	/// The name of the function without arguments or return type
	var name: String
	/// The types of parameters the function accepts
	var parametersTypeNames: [String]
	/// The four-byte function selector, which is computed from the function signature
	var selector: [Byte]
}

enum ContractFunctionError: Error {
	case invalidArguments(ContractFunction, [ABIType])
}

extension ContractFunction {
	/// The canonical function signature used to calculate the selector
	var signature: String {
		makeSignature(name: name, parametersTypeNames: parametersTypeNames)
	}

	/// Initialize a function using only the name and parameter types. The selector will be computed.
	init(name: String, parametersTypeNames: [String]) throws {
		var hasher = SHA3(variant: .keccak256)
		let signature = makeSignature(name: name, parametersTypeNames: parametersTypeNames)
		let hash = try hasher.finish(withBytes: Array(signature.utf8))

		self.name = name
		self.parametersTypeNames = parametersTypeNames
		self.selector = Array(hash[0..<4])
	}

	/// Verify that the provided list of function arguments match the function parameters
	func validate(arguments: [ABIType]) throws {
		guard parametersTypeNames.count == arguments.count else {
			throw ContractFunctionError.invalidArguments(self, arguments)
		}
		for (argument, parameterTypeName) in zip(arguments, parametersTypeNames) {
			if argument.encodedTypeName != parameterTypeName {
				throw ContractFunctionError.invalidArguments(self, arguments)
			}
		}
	}
}

// MARK: - Free helper functions

private func makeSignature(name: String, parametersTypeNames: [String]) -> String {
	"\(name)(\(parametersTypeNames.joined(separator: ",")))"
}
