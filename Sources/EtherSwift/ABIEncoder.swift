import BigInt

enum ABIEncodingError: Error {
	case invalidType(expected: EncodedType, actual: EncodedType)
	case invalidArrayType(expected: EncodedType, actual: EncodedArrayType)
	case failedToEncode(ABIType)
	case invalidHeadBytes(ABIType)
	case invalidCallDataAlignment
}

public struct ABIEncoder {
	/// The current tail offset. The next byte added to tail will have this offset.
	public var tailOffset: Int {
		totalHeadLength + tailBytes.count
	}

	/// The total length of the head data not including the function selector
	private var totalHeadLength: Int = 0
	/// The head bytes that have been encoded up to this point
	private var headBytes: [Byte] = []
	/// The tail bytes that have been encoded up to this point
	private var tailBytes: [Byte] = []

	public init() {}

	/// Encode and return the call data for the contract function
	public mutating func encodeCallData(for function: ContractFunction, arguments: [ABIType]) throws -> [Byte] {
		headBytes = []
		tailBytes = []
		totalHeadLength = arguments.map(\.headLength).reduce(0, +)

		for (argument, parameterType) in zip(arguments, function.parametersTypes) {
			let initialHeadCount = headBytes.count
			try argument.encode(parameterType, with: &self)
			let encodedHeadCount = headBytes.count - initialHeadCount
			guard encodedHeadCount == argument.headLength else {
				throw ABIEncodingError.invalidHeadBytes(argument)
			}
		}
		return function.selector + headBytes + tailBytes
	}

	/// Append encoded static data to the call data. This is usually added to the
	/// "head" portion of the call data, but can be added to the "tail" portion instead
	/// if the static type being encoded is the child of a dynamic type, e.g. static
	/// elements of a dynamic array.
	public mutating func appendStatic(bytes: [Byte]) throws {
		guard bytes.count % 32 == 0 else {
			throw ABIEncodingError.invalidCallDataAlignment
		}

		if tailStack >= 1 {
			tailBytes += bytes
		} else {
			headBytes += bytes
		}
	}

	/// Append encoded data to the "tail" portion of the call data
	public mutating func appendDynamic(bytes: [Byte]) throws {
		guard bytes.count % 32 == 0 else {
			throw ABIEncodingError.invalidCallDataAlignment
		}
		tailBytes += bytes
	}

	private var tailStack = 0

	/// Calling `appendStatic` from within the provided block ensures that the bytes
	/// will be appended to the tail, not the head
	public mutating func ensureTail(block: (inout ABIEncoder) throws -> Void) rethrows {
		tailStack += 1
		try block(&self)
		tailStack -= 1
	}
}

public extension ABIEncoder {
	/// Convenience for appending an integer
	mutating func appendStatic<T: BinaryInteger>(value: T) throws {
		try appendStatic(bytes: value.leftPadded32Bytes)
	}

	/// Convenience for appending an integer
	mutating func appendDynamic<T: BinaryInteger>(value: T) throws {
		try appendDynamic(bytes: value.leftPadded32Bytes)
	}
}
