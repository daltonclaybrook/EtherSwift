import CryptoSwift

/// Information about a function in a Solidity smart contract
struct ContractFunction {
	/// The name of the function without arguments or return type
	var name: String
	/// The types of parameters the function accepts
	var parameters: [ABIType.Type]
	/// The four-byte function selector, which is computed from the function signature
	var selector: [Byte]
}

enum ContractFunctionError: Error {
	case invalidArguments(ContractFunction, [ABIType])
}

extension ContractFunction {
	/// Initialize a function using only the name and parameters. The selector will be computed.
	init(name: String, parameters: [ABIType.Type]) throws {
		let parameterTypes = parameters.map { $0.encodedTypeName }
		let signature = "\(name)(\(parameterTypes.joined(separator: ",")))"
		var hasher = SHA3(variant: .keccak256)
		let hash = try hasher.finish(withBytes: Array(signature.utf8))

		self.name = name
		self.parameters = parameters
		self.selector = Array(hash[0..<4])
	}

	/// Verify that the provided list of function arguments match the function parameters
	func validate(arguments: [ABIType]) throws {
		guard parameters.count == arguments.count else {
			throw ContractFunctionError.invalidArguments(self, arguments)
		}
		for (argument, parameter) in zip(arguments, parameters) {
			if type(of: argument).encodedTypeName != parameter.encodedTypeName {
				throw ContractFunctionError.invalidArguments(self, arguments)
			}
		}
	}
}
