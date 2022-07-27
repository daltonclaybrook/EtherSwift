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
