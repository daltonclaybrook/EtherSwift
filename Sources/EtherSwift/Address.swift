import CryptoSwift

enum AddressError: Error {
	case invalidAddressString(String)
	case invalidAddressBytes([Byte])
}

public struct Address: Equatable {
	/// The 20 bytes of the address
	public let bytes: [Byte]
	/// The hex string representation of the address
	public let string: String
	/// Whether the string representation has a valid EIP-55 checksum
	public let hasValidChecksum: Bool
}

public extension Address {
	/// Initialize an address from a string
	init(string: String) throws {
		guard string.hasPrefix("0x"), string.count == 42 else {
			throw AddressError.invalidAddressString(string)
		}

		self.string = string
		self.bytes = [Byte](hex: string)
		guard bytes.count == 20 else {
			throw AddressError.invalidAddressString(string)
		}

		let checksumAddress = try checksumEncode(bytes: bytes)
		self.hasValidChecksum = string == checksumAddress
	}

	/// Initialize an address from bytes
	init(bytes: [Byte]) throws {
		guard bytes.count == 20 else {
			throw AddressError.invalidAddressBytes(bytes)
		}
		self.bytes = bytes
		self.string = try checksumEncode(bytes: bytes)
		self.hasValidChecksum = true
	}

	/// Return a version of this same address with a valid checksum-encoded string
	func makeChecksumEncoded() throws -> Address {
		if hasValidChecksum {
			return self
		} else {
			return try Address(bytes: bytes)
		}
	}
}

extension Address: ABIType {
	public var headLength: Int { 32 }

	public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
		try type.assertEquals(type: .address)
		try encoder.appendStatic(bytes: bytes.leftPadded(totalBytes: 32))
	}
}

extension Address: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(string)
	}
}

/// https://eips.ethereum.org/EIPS/eip-55
private func checksumEncode(bytes: [Byte]) throws -> String {
	let address = bytes.toHexString().lowercased()
	var hasher = SHA3(variant: .keccak256)
	let hashed = try hasher.finish(withBytes: Array(address.utf8)).toHexString().lowercased()

	var checksumAddress = "0x"
	for (index, character) in address.enumerated() {
		let hashedIndex = hashed.index(hashed.startIndex, offsetBy: index)
		let hashedCharacter = hashed[hashedIndex]
		let intValue = Int(String(hashedCharacter), radix: 16) ?? 0
		let toAppend = intValue >= 8 ? character.uppercased() : String(character)
		checksumAddress.append(toAppend)
	}

	return checksumAddress
}
