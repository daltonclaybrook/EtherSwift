extension Bool: ABIType {
	public var headLength: Int { 32 }

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .bool)
		let value: UInt8 = self ? 1 : 0
		try encoder.appendStatic(value: value)
	}
}
