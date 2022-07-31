/// A type used to create and use transaction calls
public struct TransactionCallBuilder {
	let api: EthereumAPIType
	let contractAddress: Address
	let function: ContractFunction
	let arguments: [ABIType]

	public init(api: EthereumAPIType, contractAddress: Address, function: ContractFunction, arguments: [ABIType]) {
		self.api = api
		self.contractAddress = contractAddress
		self.function = function
		self.arguments = arguments
	}

	/// Build the transaction call object
	/// - Parameters:
	///   - from: The address that the transaction will be sent from
	///   - options: An optional set of transaction options, e.g. gas price
	func build(from: Address? = nil, options: TransactionOptions? = nil) throws -> TransactionCall {
		TransactionCall(
			from: from,
			to: contractAddress,
			options: options,
			data: try encodeABI()
		)
	}

	func call(from: Address, options: TransactionOptions? = nil) {

	}

	func send(from: Address, options: TransactionOptions? = nil) {

	}

	func estimateGas(from: Address? = nil, options: TransactionOptions? = nil) {
	}

	func encodeABI() throws -> [Byte] {
		var encoder = ABIEncoder()
		return try encoder.encodeCallData(for: function, arguments: arguments)
	}
}
