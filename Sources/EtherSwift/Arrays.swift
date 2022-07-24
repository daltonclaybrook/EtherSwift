enum ArrayError: Error {
	case invalidUnderlyingArray
}

struct FixedArray<T: ABIType>: ABIType {
	/// The encoded type name of the elements in this array. Each instance of `T` is
	/// expected to return this same value from `encodedTypeName`.
	let elementEncodedTypeName: String
	/// The static length of the array, which is part of the type name
	let length: Int
	/// The underlying storage for the fixed array
	var underlying: [T] = []

	var encodedTypeName: String {
		"\(elementEncodedTypeName)[\(length)]"
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
