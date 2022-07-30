import BigInt

public struct TransactionOptions {
	/// Hexadecimal value of the gas provided for the transaction execution. eth_call consumes zero gas, but this parameter may be needed by some executions.
	public var gas: UInt64?
	/// Hexadecimal value of the gasPrice used for each paid gas.
	public var gasPrice: UInt64?
	/// Maximum fee, in Wei, the sender is willing to pay per gas above the base fee. See EIP-1559 transactions.
	public var maxPriorityFeePerGas: BigUInt?
	/// Maximum total fee (base fee + priority fee), in Wei, the sender is willing to pay per gas. See EIP-1559 transactions.
	public var maxFeePerGas: BigUInt?
	/// Hexadecimal value of the value sent with this transaction.
	public var value: BigUInt?

	public init(gas: UInt64? = nil, gasPrice: UInt64? = nil, maxPriorityFeePerGas: BigUInt? = nil, maxFeePerGas: BigUInt? = nil, value: BigUInt? = nil) {
		self.gas = gas
		self.gasPrice = gasPrice
		self.maxPriorityFeePerGas = maxPriorityFeePerGas
		self.maxFeePerGas = maxFeePerGas
		self.value = value
	}
}
