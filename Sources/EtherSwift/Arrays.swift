enum ArrayError: Error {
	case invalidUnderlyingArray
}

/// A fixed-length array, e.g. `string[3]`
public struct FixedArray<T: ABIType>: ABIType {
	/// The static length of the array, which is part of the type name
	public let length: Int
	/// The underlying storage for the fixed array
	public var underlying: [T] = []

	public init(length: Int, underlying: [T] = []) {
		self.length = length
		self.underlying = underlying
	}

	public var headLength: Int {
		assert(underlying.count == length, "Underlying array is invalid")
		return underlying.map(\.headLength).reduce(0, +)
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		guard case .fixedArray(let length, let elementType) = type, length == self.length else {
			throw ABIEncodingError.invalidArrayType(expected: type, actual: .fixedArray)
		}

		guard underlying.count == length else {
			throw ArrayError.invalidUnderlyingArray
		}
		for element in underlying {
			try element.encode(elementType, with: &encoder)
		}
	}
}

/// A variable-length array, e.g. `uint32[]`
public struct VariableArray<T: ABIType>: ABIType {
	/// The underlying storage for the variable array
	public var underlying: [T]

	/// Variable arrays are considered dynamic types, and thus have a static head length
	/// of 32, which contains the tail offset of the dynamic data
	public let headLength = 32

	public init(underlying: [T] = []) {
		self.underlying = underlying
	}

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		guard case .variableArray(let elementType) = type else {
			throw ABIEncodingError.invalidArrayType(expected: type, actual: .variableArray)
		}

		try encoder.appendStatic(bytes: encoder.tailOffset.leftPadded32Bytes)
		try encoder.appendDynamic(value: underlying.count)
		try encoder.ensureTail { encoder in
			for element in underlying {
				try element.encode(elementType, with: &encoder)
			}
		}
	}
}
