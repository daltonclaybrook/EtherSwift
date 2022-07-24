import BigInt

struct UInt256: RawRepresentable {
	var rawValue: BigUInt
}

extension UInt256: ExpressibleByIntegerLiteral {
	init(integerLiteral value: UInt64) {
		rawValue = BigUInt(value)
	}

	var bytes: [Byte] {
		rawValue.serialize().leftPadded(totalBytes: 32)
	}
}
