protocol ABIType: Encodable {
	/// The length of the encoded head in bytes. Most primitive types will return
	/// 32, but some types may return a higher number, such as fixed-length arrays.
	var headLength: Int { get }
	/// Validate the provided `type` and encode the value by invoking the "head" and "tail"
	/// methods on the provided encoder
	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws
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
