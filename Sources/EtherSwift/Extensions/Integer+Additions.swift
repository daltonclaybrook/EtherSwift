import BigInt

extension BinaryInteger {
	/// The byte representation of this integer left-padded to 32 bytes
	var leftPadded32Bytes: [Byte] {
		if Self.isSigned && self < 0 {
			// Negative numbers are padded with `0xff` bytes
			return BigInt(abs(Int64(self))).serialize().leftPadded(totalBytes: 32, paddingByte: 0xff)
		} else {
			return BigUInt(self).serialize().leftPadded(totalBytes: 32)
		}
	}

	var hexString: String {
		if Self.isSigned {
			return BigInt(self).serialize().toHexString().hexPrefixed
		} else {
			return BigUInt(self).serialize().toHexString().hexPrefixed
		}
	}
}

extension UInt8: ABIType {}
extension UInt16: ABIType {}
extension UInt32: ABIType {}
extension UInt64: ABIType {}

extension Int8: ABIType {}
extension Int16: ABIType {}
extension Int32: ABIType {}
extension Int64: ABIType {}
