enum ABI: Decodable {
	case function(ABIFunction)
	case event(ABIEvent)
	case error(ABIError)

	enum CodingKeys: String, CodingKey {
		case type
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let type = try container.decode(ABIType.self, forKey: .type)
		switch type {
		case .function, .constructor, .receive, .fallback:
			self = .function(try ABIFunction(from: decoder))
		case .event:
			self = .event(try ABIEvent(from: decoder))
		case .error:
			self = .error(try ABIError(from: decoder))
		}
	}
}

// MARK: - Top-level ABI types

struct ABIFunction: Decodable {
	var type: ABIType
	/// This can be nil in some cases, like when the type is `constructor`
	var name: String?
	var inputs: [ABIInput]
}

struct ABIEvent: Decodable {
	var name: String
	var inputs: [ABIInput]
	var anonymous: Bool
}

struct ABIError: Decodable {
	var name: String
	var inputs: [ABIInput]
}

// MARK: - Sub-elements

struct ABIInput: Decodable {
	var name: String
	var type: String
	var internalType: String?
	var components: [TupleComponent]?
	var indexed: Bool?
}

struct ABIOutput: Decodable {
	var internalType: String
	var name: String
	var type: String
}

enum ABIType: String, Decodable {
	case function
	case constructor
	/// The special "receive" function
	case receive
	/// The "default" function
	case fallback
	case event
	case error
}

struct TupleComponent: Decodable {
	var name: String
	var type: String
	var components: [TupleComponent]?
}
