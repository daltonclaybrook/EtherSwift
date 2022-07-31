import BigInt

public struct CallPayload: Encodable {
	public enum Block: Encodable {
		case specific(BigUInt)
		case latest
		case earliest
		case pending
	}

	public var call: TransactionCall
	public var block: Block

	public init(call: TransactionCall, block: Block = .latest) {
		self.call = call
		self.block = block
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.unkeyedContainer()
		try container.encode(self.call)
		try container.encode(self.block)
	}
}

public extension CallPayload.Block {
	func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		switch self {
		case .specific(let block):
			let hexString = block.serialize().toHexString().hexPrefixed
			try container.encode(hexString)
		case .latest:
			try container.encode("latest")
		case .earliest:
			try container.encode("earliest")
		case .pending:
			try container.encode("pending")
		}
	}
}
