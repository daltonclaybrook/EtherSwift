import EtherSwift

enum ContractGeneratorError: Error {
	case failedToParseEncodedType(String)
}

struct ContractGenerator {
	enum Indentation {
		case spaces(Int)
		case tabs
	}

	let indentation: Indentation = .spaces(4)

	func generateContractImplementation(name: String, abi: [ABI]) throws -> String {
		let components = try abi.compactMap { try generateABI($0) }
		let componentsBlock = components.joined(separator: "\n\n")
		let indent = indentation.string
		return """
			public struct \(name) {
			\(indent)public let address: Address
			\(indent)public let api: EthereumAPIType

			\(indent)public init(address: Address, api: EthereumAPIType) {
			\(indent)\(indent)self.address = address
			\(indent)\(indent)self.api = api
			\(indent)}

			\(componentsBlock)
			}
			"""
	}

	// MARK: - Private helpers

	private func generateABI(_ abi: ABI) throws -> String? {
		switch abi {
		case .function(let function):
			return try generate(function: function)
		case .event(let event):
			return generate(event: event)
		case .error(let error):
			return generate(error: error)
		}
	}

	private func generate(function: ABIFunction) throws -> String? {
		guard let functionName = function.name, function.type != .constructor else {
			// Don't generate constructors
			return nil
		}

		let indent = indentation.string

		// The encoded types used to make the function selector
		var encodedTypes: [EncodedType] = []
		// The parameters used in the function signature
		var swiftParameters: [String] = []
		// The parameter types used to construct the ContractFunction
		var parameterTypes: [String] = []
		// The arguments passed to the TransactionCallBuilder
		var arguments: [String] = []
		// Any necessary transformations from parameters to arguments
		var transformations: [String] = []

		for input in function.inputs {
			guard let type = EncodedType(encodedName: input.type) else {
				throw ContractGeneratorError.failedToParseEncodedType(input.type)
			}
			encodedTypes.append(type)
			swiftParameters.append("\(input.name): \(type.swiftTypeString)")
			parameterTypes.append("\(type)")

			switch type {
			case .fixedArray(let length, _):
				transformations.append(
					"\(indent)\(indent)let _\(input.name) = FixedArray(length: \(length), underlying: \(input.name))"
				)
				arguments.append("_\(input.name)")
			case .variableArray:
				transformations.append(
					"\(indent)\(indent)let _\(input.name) = VariableArray(underlying: \(input.name))"
				)
				arguments.append("_\(input.name)")
			default:
				arguments.append(input.name)
			}
		}

		let parameterString = swiftParameters.joined(separator: ", ")
		let functionSignature = "\(functionName)(\(parameterString))"
		let parameterTypesString = parameterTypes.joined(separator: ", ")

		let contractFunction = try ContractFunction(name: functionName, parametersTypes: encodedTypes)
		let selectorBytesString = contractFunction.selector
			.map(\.hexString)
			.joined(separator: ", ")
		let argumentsString = arguments.joined(separator: ", ")

		return """
			\(indent)func \(functionSignature) -> TransactionCallBuilder {
			\(indent)\(indent)let function = ContractFunction(
			\(indent)\(indent)\(indent)name: "\(functionName)",
			\(indent)\(indent)\(indent)parametersTypes: [\(parameterTypesString)],
			\(indent)\(indent)\(indent)selector: [\(selectorBytesString)]
			\(indent)\(indent))
			\(indent)\(indent)return TransactionCallBuilder(
			\(indent)\(indent)\(indent)api: api,
			\(indent)\(indent)\(indent)contractAddress: address,
			\(indent)\(indent)\(indent)function: function,
			\(indent)\(indent)\(indent)arguments: [\(argumentsString)]
			\(indent)\(indent))
			\(indent)}
			"""
	}

	private func generate(event: ABIEvent) -> String? {
		// unimplemented for now
		return nil
	}

	private func generate(error: ABIError) -> String? {
		// unimplemented for now
		return nil
	}
}

extension ContractGenerator.Indentation {
	var string: String {
		switch self {
		case .spaces(let count):
			return String(repeating: " ", count: count)
		case .tabs:
			return "\t"
		}
	}
}

extension Byte {
	var hexString: String {
		var string = String(self, radix: 16)
		if string.count == 1 {
			string = "0" + string
		}
		return "0x" + string
	}
}
