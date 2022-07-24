import BigInt

public typealias Byte = UInt8

public extension Collection where Element == Byte {
	func leftPadded(totalBytes: Int) -> [Byte] {
		guard count <= totalBytes else {
			fatalError("Array is too long to pad")
		}
		let countToPad = totalBytes - count
		return [Byte](repeating: 0x00, count: countToPad) + self
	}

	func rightPadded(totalBytes: Int) -> [Byte] {
		guard count <= totalBytes else {
			fatalError("Array is too long to pad")
		}
		let countToPad = totalBytes - count
		return self + [Byte](repeating: 0x00, count: countToPad)
	}
}

struct Bytes32: RawRepresentable, ABIType {
	var rawValue: [Byte]

	let encodedTypeName = "bytes32"
	let headLength = 32

	func encode(with encoder: inout ABIEncoder) throws {
		encoder.appendToHead(bytes: rawValue)
	}
}

extension Bytes32 {
	init<T: BinaryInteger>(_ value: T) {
		self.rawValue = BigUInt(value).serialize().leftPadded(totalBytes: 32)
	}
}
