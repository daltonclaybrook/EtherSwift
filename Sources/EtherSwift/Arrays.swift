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

	func encodedHead(tailOffset: Int) throws -> [Byte] {
		assert(underlying.count == length, "Underlying array is invalid")
		return try underlying.reduce([]) { result, element in
			try result + element.encodedHead(tailOffset: tailOffset)
		}
	}

	func encodeTail(encoder: inout ABIEncoder) throws {
		<#code#>
	}
}
