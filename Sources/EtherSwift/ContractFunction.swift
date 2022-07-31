import CryptoSwift

/// Information about a function in a Solidity smart contract
public struct ContractFunction {
	/// The name of the function without arguments or return type
	public var name: String
	/// The types of parameters the function accepts
	public var parametersTypes: [EncodedType]
	/// The four-byte function selector, which is computed from the function signature
	public var selector: [Byte]

	public init(name: String, parametersTypes: [EncodedType], selector: [Byte]) {
		self.name = name
		self.parametersTypes = parametersTypes
		self.selector = selector
	}
}

public enum ContractFunctionError: Error {
	case invalidArguments(ContractFunction, [ABIType])
}

public extension ContractFunction {
	/// The canonical function signature used to calculate the selector
	var signature: String {
		makeSignature(name: name, parametersTypes: parametersTypes)
	}

	/// Initialize a function using only the name and parameter types. The selector will be computed.
	init(name: String, parametersTypes: [EncodedType]) throws {
		var hasher = SHA3(variant: .keccak256)
		let signature = makeSignature(name: name, parametersTypes: parametersTypes)
		let hash = try hasher.finish(withBytes: Array(signature.utf8))

		self.name = name
		self.parametersTypes = parametersTypes
		self.selector = Array(hash[0..<4])
	}
}

// MARK: - Free helper functions

private func makeSignature(name: String, parametersTypes: [EncodedType]) -> String {
	"\(name)(\(parametersTypes.map(\.encodedName).joined(separator: ",")))"
}
