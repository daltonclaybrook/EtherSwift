// THIS IS A GENERATED FILE

import BigInt

public struct UInt24: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 24))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int24: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 24))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt40: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 40))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int40: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 40))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt48: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 48))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int48: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 48))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt56: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 56))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int56: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 56))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt72: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 72))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int72: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 72))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt80: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 80))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int80: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 80))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt88: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 88))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int88: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 88))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt96: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 96))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int96: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 96))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt104: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 104))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int104: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 104))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt112: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 112))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int112: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 112))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt120: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 120))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int120: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 120))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt128: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 128))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int128: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 128))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt136: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 136))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int136: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 136))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt144: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 144))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int144: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 144))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt152: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 152))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int152: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 152))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt160: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 160))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int160: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 160))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt168: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 168))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int168: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 168))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt176: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 176))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int176: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 176))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt184: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 184))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int184: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 184))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt192: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 192))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int192: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 192))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt200: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 200))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int200: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 200))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt208: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 208))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int208: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 208))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt216: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 216))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int216: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 216))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt224: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 224))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int224: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 224))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt232: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 232))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int232: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 232))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt240: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 240))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int240: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 240))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt248: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 248))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int248: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 248))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct UInt256: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = UInt64

	public var rawValue: BigUInt
	public let headLength = 32

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .uint(bits: 256))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0x00)
		try encoder.appendStatic(bytes: bytes)
	}
}

public struct Int256: RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
	public typealias IntegerLiteralType = Int64

	public var rawValue: BigInt
	public let headLength = 32

	public init(rawValue: BigInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: Int64) {
		self.rawValue = BigInt(value)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .int(bits: 256))
		let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		try encoder.appendStatic(bytes: bytes)
	}
}
