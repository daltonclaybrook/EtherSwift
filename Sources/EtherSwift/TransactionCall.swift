import BigInt

public struct TransactionCall: Encodable {
	/// 20 Bytes - The address the transaction is sent from.
	public var from: Address
	/// 20 Bytes - The address the transaction is directed to.
	public var to: Address
	/// [optional] hexadecimal value of the gas provided for the transaction execution. eth_call consumes zero gas, but this parameter may be needed by some executions.
	public var gas: UInt64?
	/// [optional] hexadecimal value of the gasPrice used for each paid gas.
	public var gasPrice: UInt64?
	/// [optional] Maximum fee, in Wei, the sender is willing to pay per gas above the base fee. See EIP-1559 transactions.
	public var maxPriorityFeePerGas: BigUInt?
	/// [optional] Maximum total fee (base fee + priority fee), in Wei, the sender is willing to pay per gas. See EIP-1559 transactions.
	public var maxFeePerGas: BigUInt?
	/// [optional] hexadecimal value of the value sent with this transaction.
	public var value: BigUInt?
	/// [optional] Hash of the method signature and encoded parameters. See the Ethereum contract ABI specification.
	public var data: [Byte]
}

extension TransactionCall {
	public enum CodingKeys: String, CodingKey {
		case from
		case to
		case gas
		case gasPrice
		case maxPriorityFeePerGas
		case maxFeePerGas
		case value
		case data
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(from, forKey: .from)
		try container.encode(to, forKey: .to)
		try container.encodeIfPresent(gas?.hexString, forKey: .gas)
		try container.encodeIfPresent(gasPrice?.hexString, forKey: .gasPrice)
		try container.encodeIfPresent(maxPriorityFeePerGas?.description, forKey: .maxPriorityFeePerGas)
		try container.encodeIfPresent(maxFeePerGas?.description, forKey: .maxFeePerGas)
		try container.encodeIfPresent(value?.hexString, forKey: .value)
		try container.encodeIfPresent(data.toHexString().hexPrefixed, forKey: .data)
	}
}
