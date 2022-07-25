enum ArrayError: Error {
	case invalidUnderlyingArray
}

/// A fixed-length array, e.g. `string[3]`
struct FixedArray<T: ABIType>: ABIType {
	/// The static length of the array, which is part of the type name
	let length: Int
	/// The underlying storage for the fixed array
	var underlying: [T] = []

	var headLength: Int {
		assert(underlying.count == length, "Underlying array is invalid")
		return underlying.map(\.headLength).reduce(0, +)
	}

	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
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
struct VariableArray<T: ABIType>: ABIType {
	/// The underlying storage for the variable array
	var underlying: [T] = []

	/// Variable arrays are considered dynamic types, and thus have a static head length
	/// of 32, which contains the tail offset of the dynamic data
	let headLength = 32

	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
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
