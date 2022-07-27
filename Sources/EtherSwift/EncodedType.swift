public indirect enum EncodedType: Equatable, Encodable {
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

/// Used in some thrown errors
enum EncodedArrayType {
	case fixedArray
	case variableArray
}

public extension EncodedType {
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

	/// Attempt to initialize an EncodedType from its string representation
	init?<S: StringProtocol>(encodedName: S) {
		if let type = encodedTypeForStaticName(encodedName: encodedName) {
			self = type
		} else if let type = encodedTypeForDynamicName(encodedName: encodedName) {
			self = type
		} else {
			return nil
		}
	}

	/// Throws an error if the provided type is not equal to the receiver
	func assertEquals(type: EncodedType) throws {
		guard self == type else {
			throw ABIEncodingError.invalidType(expected: self, actual: type)
		}
	}
}

// MARK: - Free helper functions

private func encodedTypeForStaticName<S: StringProtocol>(encodedName: S) -> EncodedType? {
	switch encodedName {
	case "address":
		return .address
	case "bool":
		return .bool
	case "string":
		return .string
	case "bytes":
		return .variableBytes
	default:
		return nil
	}
}

private func encodedTypeForDynamicName<S: StringProtocol>(encodedName: S) -> EncodedType? {
	if encodedName.hasPrefix("uint") {
		let intIndex = encodedName.index(encodedName.startIndex, offsetBy: 4)
		guard let bits = Int(encodedName[intIndex...]) else { return nil }
		guard bits > 0 && bits % 8 == 0 else { return nil }
		return .uint(bits: bits)
	} else if encodedName.hasPrefix("int") {
		let intIndex = encodedName.index(encodedName.startIndex, offsetBy: 3)
		guard let bits = Int(encodedName[intIndex...]) else { return nil }
		guard bits > 0 && bits % 8 == 0 else { return nil }
		return .int(bits: bits)
	} else if encodedName.hasPrefix("bytes") {
		let intIndex = encodedName.index(encodedName.startIndex, offsetBy: 5)
		guard let bytes = Int(encodedName[intIndex...]) else { return nil }
		guard (1...32).contains(bytes) else { return nil }
		return .bytes(count: bytes)
	} else if encodedName.hasSuffix("[]") {
		let elementLastIndex = encodedName.index(encodedName.endIndex, offsetBy: -2)
		let elementName = encodedName[..<elementLastIndex]
		guard let elementType = EncodedType(encodedName: elementName) else { return nil }
		return .variableArray(element: elementType)
	} else if encodedName.hasSuffix("]") {
		guard let openBracketIndex = encodedName.lastIndex(of: "[") else { return nil }
		let numberIndex = encodedName.index(after: openBracketIndex)
		let closeBracketIndex = encodedName.index(before: encodedName.endIndex)
		guard let length = Int(encodedName[numberIndex..<closeBracketIndex]) else { return nil }

		let elementName = encodedName[..<openBracketIndex]
		guard let elementType = EncodedType(encodedName: elementName) else { return nil }
		return .fixedArray(length: length, element: elementType)
	} else if encodedName.hasPrefix("(") && encodedName.hasSuffix(")") && encodedName.count > 2 {
		let firstIndex = encodedName.index(after: encodedName.startIndex)
		let lastIndex = encodedName.index(before: encodedName.endIndex)
		let elementNames = encodedName[firstIndex..<lastIndex].components(separatedBy: ",")
		let elements = elementNames.compactMap(EncodedType.init(encodedName:))
		guard elementNames.count == elements.count else { return nil }
		return .tuple(elements: elements)
	} else {
		return nil
	}
}
