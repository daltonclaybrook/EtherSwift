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
}
