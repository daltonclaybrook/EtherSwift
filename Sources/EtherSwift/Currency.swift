import BigInt

/// The base denomination of Ether
public struct Wei: RawRepresentable, ExpressibleByIntegerLiteral {
	public let rawValue: BigUInt

	public init(rawValue: BigUInt) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = BigUInt(value)
	}
}

/// A commonly used denomination of Ether.
public struct Gwei: RawRepresentable, ExpressibleByIntegerLiteral {
	public let rawValue: Wei

	public init(rawValue: Wei) {
		self.rawValue = rawValue
	}

	public init(integerLiteral value: UInt64) {
		self.rawValue = Wei(rawValue: BigUInt(value) * 1_000_000_000)
	}
}

public enum Denomination {
	case wei
	case kwei
	case mwei
	case gwei
	case szabo
	case finney
	case ether
	case kether
	case mether
	case gether
	case tether
}

extension Denomination {
	/// The order of magnitude of the denomination relative to Ether.
	/// e.g. Wei is ETH * 10^18, so the value returned for Wei is 18.
	var magnitude: Int {
		switch self {
		case .wei: return 18
		case .kwei: return 15
		case .mwei: return 12
		case .gwei: return 9
		case .szabo: return 6
		case .finney: return 3
		case .ether: return 1
		case .kether: return -3
		case .mether: return -6
		case .gether: return -9
		case .tether: return -12
		}
	}
}
