enum ArrayError: Error {
	case invalidUnderlyingArray
}

/// A fixed-length array, e.g. `string[3]`
struct FixedArray<T: ABIType>: ABIType {
	/// The encoded type name of the elements in this array. Each instance of `T` is
	/// expected to return this same value from `encodedType`.
	let elementType: EncodedType
	/// The static length of the array, which is part of the type name
	let length: Int
	/// The underlying storage for the fixed array
	var underlying: [T] = []

	var encodedType: EncodedType {
		.fixedArray(length: length, element: elementType)
	}

	var headLength: Int {
		assert(underlying.count == length, "Underlying array is invalid")
		return underlying.map(\.headLength).reduce(0, +)
	}

	func encode(with encoder: inout ABIEncoder) throws {
		guard underlying.count == length else {
			throw ArrayError.invalidUnderlyingArray
		}
		for element in underlying {
			try element.encode(with: &encoder)
		}
	}
}

/// A variable-length array, e.g. `uint32[]`
struct VariableArray<T: ABIType>: ABIType {
	/// The encoded type name of the elements in this array. Each instance of `T` is
	/// expected to return this same value from `encodedType`.
	let elementType: EncodedType
	/// The underlying storage for the variable array
	var underlying: [T] = []

	var encodedType: EncodedType {
		.variableArray(element: elementType)
	}

	/// Variable arrays are considered dynamic types, and thus have a static head length
	/// of 32, which contains the tail offset of the dynamic data
	let headLength = 32

	func encode(with encoder: inout ABIEncoder) throws {
		try encoder.appendStatic(bytes: encoder.tailOffset.leftPadded32Bytes)
		try encoder.appendDynamic(value: underlying.count)
		try encoder.ensureTail { encoder in
			for element in underlying {
				try element.encode(with: &encoder)
			}
		}
	}
}

//extension VariableArray {
//	init(_ elements: [T]) throws {
//
//	}
//}
