// THIS IS A GENERATED FILE

import BigInt

/// Corresponds to the `uint24` type in Solidity
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

/// Corresponds to the `int24` type in Solidity
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

/// Corresponds to the `uint40` type in Solidity
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

/// Corresponds to the `int40` type in Solidity
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

/// Corresponds to the `uint48` type in Solidity
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

/// Corresponds to the `int48` type in Solidity
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

/// Corresponds to the `uint56` type in Solidity
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

/// Corresponds to the `int56` type in Solidity
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

/// Corresponds to the `uint72` type in Solidity
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

/// Corresponds to the `int72` type in Solidity
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

/// Corresponds to the `uint80` type in Solidity
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

/// Corresponds to the `int80` type in Solidity
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

/// Corresponds to the `uint88` type in Solidity
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

/// Corresponds to the `int88` type in Solidity
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

/// Corresponds to the `uint96` type in Solidity
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

/// Corresponds to the `int96` type in Solidity
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

/// Corresponds to the `uint104` type in Solidity
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

/// Corresponds to the `int104` type in Solidity
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

/// Corresponds to the `uint112` type in Solidity
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

/// Corresponds to the `int112` type in Solidity
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

/// Corresponds to the `uint120` type in Solidity
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

/// Corresponds to the `int120` type in Solidity
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

/// Corresponds to the `uint128` type in Solidity
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

/// Corresponds to the `int128` type in Solidity
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

/// Corresponds to the `uint136` type in Solidity
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

/// Corresponds to the `int136` type in Solidity
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

/// Corresponds to the `uint144` type in Solidity
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

/// Corresponds to the `int144` type in Solidity
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

/// Corresponds to the `uint152` type in Solidity
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

/// Corresponds to the `int152` type in Solidity
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

/// Corresponds to the `uint160` type in Solidity
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

/// Corresponds to the `int160` type in Solidity
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

/// Corresponds to the `uint168` type in Solidity
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

/// Corresponds to the `int168` type in Solidity
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

/// Corresponds to the `uint176` type in Solidity
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

/// Corresponds to the `int176` type in Solidity
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

/// Corresponds to the `uint184` type in Solidity
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

/// Corresponds to the `int184` type in Solidity
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

/// Corresponds to the `uint192` type in Solidity
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

/// Corresponds to the `int192` type in Solidity
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

/// Corresponds to the `uint200` type in Solidity
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

/// Corresponds to the `int200` type in Solidity
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

/// Corresponds to the `uint208` type in Solidity
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

/// Corresponds to the `int208` type in Solidity
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

/// Corresponds to the `uint216` type in Solidity
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

/// Corresponds to the `int216` type in Solidity
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

/// Corresponds to the `uint224` type in Solidity
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

/// Corresponds to the `int224` type in Solidity
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

/// Corresponds to the `uint232` type in Solidity
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

/// Corresponds to the `int232` type in Solidity
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

/// Corresponds to the `uint240` type in Solidity
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

/// Corresponds to the `int240` type in Solidity
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

/// Corresponds to the `uint248` type in Solidity
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

/// Corresponds to the `int248` type in Solidity
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

/// Corresponds to the `uint256` type in Solidity
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

/// Corresponds to the `int256` type in Solidity
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
