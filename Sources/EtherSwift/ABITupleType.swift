/// A convenience protocol for types with an underlying ABI type of tuple, such as structs.
public protocol ABITupleType: ABIType {
	/// The ordered list of fields in the tuple
	var fields: [ABIType] { get }
}

public extension ABITupleType {
	var headLength: Int {
		fields.map(\.headLength).reduce(0, +)
	}

	func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		guard case .tuple(let elementTypes) = type else {
			throw ABIEncodingError.invalidTupleType(expected: type)
		}
		guard elementTypes.count == fields.count else {
			throw ABIEncodingError.invalidTupleLength(expected: elementTypes.count, actual: fields.count)
		}

		for (field, type) in zip(fields, elementTypes) {
			try field.encode(type, with: &encoder)
		}
	}
}
