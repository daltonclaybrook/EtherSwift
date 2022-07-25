import BigInt

public typealias Byte = UInt8

public extension Collection where Element == Byte {
	func leftPadded(totalBytes: Int, paddingByte: Byte = 0x00) -> [Byte] {
		guard count <= totalBytes else {
			fatalError("Array is too long to pad")
		}
		let countToPad = totalBytes - count
		return [Byte](repeating: paddingByte, count: countToPad) + self
	}

	func rightPadded(totalBytes: Int, paddingByte: Byte = 0x00) -> [Byte] {
		guard count <= totalBytes else {
			fatalError("Array is too long to pad")
		}
		let countToPad = totalBytes - count
		return self + [Byte](repeating: paddingByte, count: countToPad)
	}
}

struct Bytes32: RawRepresentable, ABIType {
	var rawValue: [Byte]

	let headLength = 32

	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		guard type == .bytes(count: 32) else {
			throw ABIEncodingError.invalidType(expected: type, actual: .bytes(count: 32))
		}
		try encoder.appendStatic(bytes: rawValue)
	}
}
