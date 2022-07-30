extension Wei: AdditiveArithmetic {
	public static var zero: Self { 0 }

	public static func + (lhs: Self, rhs: Self) -> Self {
		Wei(rawValue: lhs.rawValue + rhs.rawValue)
	}

	public static func += (lhs: inout Self, rhs: Self) {
		lhs = lhs + rhs
	}

	public static func - (lhs: Self, rhs: Self) -> Self {
		Wei(rawValue: lhs.rawValue - rhs.rawValue)
	}

	public static func -= (lhs: inout Self, rhs: Self) {
		lhs = lhs - rhs
	}
}

extension Gwei: AdditiveArithmetic {
	public static var zero: Self { 0 }

	public static func + (lhs: Self, rhs: Self) -> Self {
		Gwei(rawValue: lhs.rawValue + rhs.rawValue)
	}

	public static func += (lhs: inout Self, rhs: Self) {
		lhs = lhs + rhs
	}

	public static func - (lhs: Self, rhs: Self) -> Self {
		Gwei(rawValue: lhs.rawValue - rhs.rawValue)
	}

	public static func -= (lhs: inout Self, rhs: Self) {
		lhs = lhs - rhs
	}
}
