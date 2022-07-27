import BigInt

public protocol ABIType: Encodable {
	/// The length of the encoded head in bytes. Most types will return 32, which is the
	/// padded size of most primitives, but some types may return a higher number,
	/// such as fixed-length arrays.
	var headLength: Int { get }
	/// Validate the provided `type` and encode the value by invoking the "head" and "tail"
	/// methods on the provided encoder
	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws
}

extension ABIType where Self: RawRepresentable, Self.RawValue == BigUInt {
	public typealias IntegerLiteralType = UInt64

	public init(integerLiteral value: UInt64) {
		self.init(rawValue: BigUInt(value))!
	}
}

extension ABIType where Self: RawRepresentable, Self.RawValue == BigInt {
	public init(integerLiteral value: Int64) {
		self.init(rawValue: BigInt(value))!
	}
}

extension ABIType where Self: UnsignedInteger {
	public var headLength: Int { 32 }

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: bitWidth))
		try encoder.appendStatic(value: self)
	}
}

extension ABIType where Self: SignedInteger {
	public var headLength: Int { 32 }

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: bitWidth))
		try encoder.appendStatic(value: self)
	}
}
