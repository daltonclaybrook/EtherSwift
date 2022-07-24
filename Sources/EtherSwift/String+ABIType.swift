import BigInt
import Foundation

extension String: ABIType {
	static var encodedTypeName: String {
		"string"
	}

	func encodedHead(tailOffset: Int) throws -> Bytes32 {
		Bytes32(tailOffset)
	}

	func encodeTail(encoder: inout ABIEncoder) throws {
		guard let stringData = data(using: .utf8) else {
			throw ABIEncodingError.failedToEncode(self)
		}

		encoder.appendToTail(value: stringData.count)

		let amountToPad = 32 - stringData.count % 32
		let stringBytes = Array(stringData).rightPadded(totalBytes: stringData.count + amountToPad)
		try encoder.appendToTail(bytes: stringBytes)
	}
}
