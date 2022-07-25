indirect enum EncodedType {
	case uint(bits: Int)
	case int(bits: Int)
	case address
	case bool
	case bytes(count: Int)
	case string
	case variableBytes
	case fixedArray(length: Int, element: EncodedType)
	case variableArray(element: EncodedType)
	case tuple(elements: [EncodedType])
}

extension EncodedType {
	/// The encoded type name used in function signature calculation
	var encodedName: String {
		switch self {
		case .uint(let bits):
			return "uint\(bits)"
		case .int(let bits):
			return "int\(bits)"
		case .address:
			return "address"
		case .bool:
			return "bool"
		case .bytes(let count):
			return "bytes\(count)"
		case .string:
			return "string"
		case .variableBytes:
			return "bytes"
		case .fixedArray(let length, let element):
			return "\(element.encodedName)[\(length)]"
		case .variableArray(let element):
			return "\(element.encodedName)[]"
		case .tuple(let elements):
			let typeNames = elements.map(\.encodedName).joined(separator: ",")
			return "(\(typeNames))"
		}
	}
}
