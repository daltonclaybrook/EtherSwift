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
	public func build(from: Address? = nil, options: TransactionOptions? = nil) throws -> TransactionCall {
		TransactionCall(
			from: from,
			to: contractAddress,
			options: options,
			data: try encodeABI()
		)
	}

	/// Convenience function for invoking the `eth_call` RPC method
	/// - Parameters:
	///   - from: The address to call the transaction from
	///   - options: An optional set of transaction options, e.g. gas price
	public func call(from: Address, options: TransactionOptions? = nil) async throws {
		let transaction = try build(from: from, options: options)
		try await api.call(transaction: transaction)
	}

	public func send(from: Address, options: TransactionOptions? = nil) {
		// todo
	}

	public func estimateGas(from: Address? = nil, options: TransactionOptions? = nil) {
		// todo
	}

	func encodeABI() throws -> [Byte] {
		var encoder = ABIEncoder()
		return try encoder.encodeCallData(for: function, arguments: arguments)
	}
}
