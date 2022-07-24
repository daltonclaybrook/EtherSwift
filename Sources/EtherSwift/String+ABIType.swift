import BigInt
import Foundation

extension String: ABIType {
	var encodedTypeName: String { "string" }
	var headLength: Int { 32 }

	func encode(with encoder: inout ABIEncoder) throws {
		guard let stringData = data(using: .utf8) else {
			throw ABIEncodingError.failedToEncode(self)
		}
		
		encoder.appendToHead(bytes: Bytes32(encoder.tailOffset).rawValue)
		encoder.appendToTail(value: stringData.count)

		let amountToPad = 32 - stringData.count % 32
		let stringBytes = Array(stringData).rightPadded(totalBytes: stringData.count + amountToPad)
		try encoder.appendToTail(bytes: stringBytes)
	}
}
