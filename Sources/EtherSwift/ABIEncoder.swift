import BigInt

enum ABIEncodingError: Error {
	case failedToEncode(ABIType)
	case invalidHeadBytes(ABIType)
	case invalidTailAlignment
}

struct ABIEncoder {
	let function: ContractFunction
	let arguments: [ABIType]

	/// The current tail offset. The next byte added to tail will have this offset.
	var tailOffset: Int {
		arguments.count * 32 + tailBytes.count
	}

	/// The tail bytes that have been encoded up to this point
	private var tailBytes: [Byte] = []

	init(function: ContractFunction, arguments: [ABIType]) throws {
		self.function = function
		self.arguments = arguments
		try function.validate(arguments: arguments)
	}

	/// Encode and return the call data for the contract function
	mutating func encodeCallData() throws -> [Byte] {
		var headBytes: [Byte] = []
		tailBytes = []
		for argument in arguments {
			let head = try argument.encodedHead(tailOffset: tailOffset)
			guard head.rawValue.count == 32 else {
				throw ABIEncodingError.invalidHeadBytes(argument)
			}
			headBytes += head.rawValue
			try argument.encodeTail(encoder: &self)
		}
		return function.selector + headBytes + tailBytes
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
