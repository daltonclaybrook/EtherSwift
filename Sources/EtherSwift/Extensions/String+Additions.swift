import BigInt
import Foundation

extension String: ABIType {
	public var headLength: Int { 32 }

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .string)

		guard let stringData = data(using: .utf8) else {
			throw ABIEncodingError.failedToEncode(self)
		}

		try encoder.appendStatic(value: encoder.tailOffset)
		try encoder.appendDynamic(value: stringData.count)

		let amountToPad = 32 - stringData.count % 32
		let stringBytes = Array(stringData).rightPadded(totalBytes: stringData.count + amountToPad)
		try encoder.appendDynamic(bytes: stringBytes)
	}
}

extension String {
	var hexPrefixed: String {
		guard !hasPrefix("0x") else { return self }
		return "0x\(self)"
	}
}
