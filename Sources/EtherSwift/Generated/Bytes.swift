enum BytesEncodingError: Error {
	case invalidBytesCount(expected: Int, actual: Int)
}

/// Corresponds to the `bytes1` type in Solidity
public struct Bytes1: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 1))
		guard rawValue.count == 1 else {
			throw BytesEncodingError.invalidBytesCount(expected: 1, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes2` type in Solidity
public struct Bytes2: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 2))
		guard rawValue.count == 2 else {
			throw BytesEncodingError.invalidBytesCount(expected: 2, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes3` type in Solidity
public struct Bytes3: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 3))
		guard rawValue.count == 3 else {
			throw BytesEncodingError.invalidBytesCount(expected: 3, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes4` type in Solidity
public struct Bytes4: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 4))
		guard rawValue.count == 4 else {
			throw BytesEncodingError.invalidBytesCount(expected: 4, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes5` type in Solidity
public struct Bytes5: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 5))
		guard rawValue.count == 5 else {
			throw BytesEncodingError.invalidBytesCount(expected: 5, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes6` type in Solidity
public struct Bytes6: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 6))
		guard rawValue.count == 6 else {
			throw BytesEncodingError.invalidBytesCount(expected: 6, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes7` type in Solidity
public struct Bytes7: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 7))
		guard rawValue.count == 7 else {
			throw BytesEncodingError.invalidBytesCount(expected: 7, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes8` type in Solidity
public struct Bytes8: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 8))
		guard rawValue.count == 8 else {
			throw BytesEncodingError.invalidBytesCount(expected: 8, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes9` type in Solidity
public struct Bytes9: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 9))
		guard rawValue.count == 9 else {
			throw BytesEncodingError.invalidBytesCount(expected: 9, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes10` type in Solidity
public struct Bytes10: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 10))
		guard rawValue.count == 10 else {
			throw BytesEncodingError.invalidBytesCount(expected: 10, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes11` type in Solidity
public struct Bytes11: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 11))
		guard rawValue.count == 11 else {
			throw BytesEncodingError.invalidBytesCount(expected: 11, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes12` type in Solidity
public struct Bytes12: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 12))
		guard rawValue.count == 12 else {
			throw BytesEncodingError.invalidBytesCount(expected: 12, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes13` type in Solidity
public struct Bytes13: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 13))
		guard rawValue.count == 13 else {
			throw BytesEncodingError.invalidBytesCount(expected: 13, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes14` type in Solidity
public struct Bytes14: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 14))
		guard rawValue.count == 14 else {
			throw BytesEncodingError.invalidBytesCount(expected: 14, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes15` type in Solidity
public struct Bytes15: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 15))
		guard rawValue.count == 15 else {
			throw BytesEncodingError.invalidBytesCount(expected: 15, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes16` type in Solidity
public struct Bytes16: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 16))
		guard rawValue.count == 16 else {
			throw BytesEncodingError.invalidBytesCount(expected: 16, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes17` type in Solidity
public struct Bytes17: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 17))
		guard rawValue.count == 17 else {
			throw BytesEncodingError.invalidBytesCount(expected: 17, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes18` type in Solidity
public struct Bytes18: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 18))
		guard rawValue.count == 18 else {
			throw BytesEncodingError.invalidBytesCount(expected: 18, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes19` type in Solidity
public struct Bytes19: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 19))
		guard rawValue.count == 19 else {
			throw BytesEncodingError.invalidBytesCount(expected: 19, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes20` type in Solidity
public struct Bytes20: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 20))
		guard rawValue.count == 20 else {
			throw BytesEncodingError.invalidBytesCount(expected: 20, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes21` type in Solidity
public struct Bytes21: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 21))
		guard rawValue.count == 21 else {
			throw BytesEncodingError.invalidBytesCount(expected: 21, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes22` type in Solidity
public struct Bytes22: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 22))
		guard rawValue.count == 22 else {
			throw BytesEncodingError.invalidBytesCount(expected: 22, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes23` type in Solidity
public struct Bytes23: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 23))
		guard rawValue.count == 23 else {
			throw BytesEncodingError.invalidBytesCount(expected: 23, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes24` type in Solidity
public struct Bytes24: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 24))
		guard rawValue.count == 24 else {
			throw BytesEncodingError.invalidBytesCount(expected: 24, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes25` type in Solidity
public struct Bytes25: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 25))
		guard rawValue.count == 25 else {
			throw BytesEncodingError.invalidBytesCount(expected: 25, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes26` type in Solidity
public struct Bytes26: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 26))
		guard rawValue.count == 26 else {
			throw BytesEncodingError.invalidBytesCount(expected: 26, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes27` type in Solidity
public struct Bytes27: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 27))
		guard rawValue.count == 27 else {
			throw BytesEncodingError.invalidBytesCount(expected: 27, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes28` type in Solidity
public struct Bytes28: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 28))
		guard rawValue.count == 28 else {
			throw BytesEncodingError.invalidBytesCount(expected: 28, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes29` type in Solidity
public struct Bytes29: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 29))
		guard rawValue.count == 29 else {
			throw BytesEncodingError.invalidBytesCount(expected: 29, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes30` type in Solidity
public struct Bytes30: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 30))
		guard rawValue.count == 30 else {
			throw BytesEncodingError.invalidBytesCount(expected: 30, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes31` type in Solidity
public struct Bytes31: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 31))
		guard rawValue.count == 31 else {
			throw BytesEncodingError.invalidBytesCount(expected: 31, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}

/// Corresponds to the `bytes32` type in Solidity
public struct Bytes32: RawRepresentable, ABIType, ExpressibleByArrayLiteral {
	public var rawValue: [Byte]
	public let headLength = 32

	public init(rawValue: [Byte]) {
		self.rawValue = rawValue
	}

	public init(arrayLiteral elements: Byte...) {
		self.rawValue = elements
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bytes(count: 32))
		guard rawValue.count == 32 else {
			throw BytesEncodingError.invalidBytesCount(expected: 32, actual: rawValue.count)
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}
