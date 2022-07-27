/// Corresponds to the `bytes` type in Solidity
public struct Bytes: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .variableBytes)

		// pointer to the where the array is stored in the tail
		try encoder.appendStatic(value: encoder.tailOffset)
		// length of the array
		try encoder.appendDynamic(value: rawValue.count)
		// padded contents of the array
		let amountToPad = 32 - rawValue.count % 32
		let paddedBytes = rawValue.rightPadded(totalBytes: rawValue.count + amountToPad)
		try encoder.appendDynamic(bytes: paddedBytes)
	}
}
