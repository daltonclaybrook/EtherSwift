import BigInt

enum ABIEncodingError: Error {
	case failedToEncode(ABIType)
	case invalidHeadBytes(ABIType)
	case invalidTailAlignment
}

struct ABIEncoder {
	let function: ContractFunction
	let arguments: [ABIType]
	/// The total length of the head data not including the function selector
	let totalHeadLength: Int

	/// The current tail offset. The next byte added to tail will have this offset.
	var tailOffset: Int {
		totalHeadLength + tailBytes.count
	}

	/// The head bytes that have been encoded up to this point
	private var headBytes: [Byte] = []
	/// The tail bytes that have been encoded up to this point
	private var tailBytes: [Byte] = []

	init(function: ContractFunction, arguments: [ABIType]) throws {
		self.function = function
		self.arguments = arguments
		self.totalHeadLength = arguments.map(\.headLength).reduce(0, +)
		try function.validate(arguments: arguments)
	}

	/// Encode and return the call data for the contract function
	mutating func encodeCallData() throws -> [Byte] {
		headBytes = []
		tailBytes = []
		for argument in arguments {
			let initialHeadCount = headBytes.count
			try argument.encode(with: &self)
			let encodedHeadCount = headBytes.count - initialHeadCount
			guard encodedHeadCount == argument.headLength else {
				throw ABIEncodingError.invalidHeadBytes(argument)
			}
		}
		return function.selector + headBytes + tailBytes
	}

	/// Append to the head portion of the call data
	mutating func appendToHead(bytes: [Byte]) {
		headBytes += bytes
	}

	/// Append to the tail portion of call data.
	mutating func appendToTail(bytes: [Byte]) throws {
		guard bytes.count % 32 == 0 else {
			throw ABIEncodingError.invalidTailAlignment
		}
		tailBytes += bytes
	}

	/// Append to the tail portion of call data.
	mutating func appendToTail<T: BinaryInteger>(value: T) {
		tailBytes += BigUInt(value).serialize().leftPadded(totalBytes: 32)
	}
}
