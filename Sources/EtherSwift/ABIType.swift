protocol ABIType: Encodable {
	/// The encoded type name
	static var encodedTypeName: String { get }
	/// Encode the head portion of the value
	func encodedHead(tailOffset: Int) throws -> Bytes32
	/// Encode the tail portion of the value and invoke `appendTailBytes` on the provided
	/// encoder with the encoded bytes.
	func encodeTail(encoder: inout ABIEncoder) throws
}

extension ABIType {
	func encodeTail(encoder: inout ABIEncoder) throws {
		// no-op
	}
}

///// A type that encodes as a different type under the hood
//protocol ABIProxyType: Encodable, ABIType {
//	associatedtype Underlying: ABIType
//
//	/// The underlying type that will be encoded
//	var underlying: Underlying { get }
//}
//
//extension ABIProxyType {
//	static var encodedTypeName: String {
//		Underlying.encodedTypeName
//	}
//
//	func encodedHead(nextTailOffset: UInt64) throws -> [Byte] {
//		try underlying.encodedHead(nextTailOffset: nextTailOffset)
//	}
//
//	func encodeTail() throws -> [Byte] {
//		try underlying.encodeTail()
//	}
//}
