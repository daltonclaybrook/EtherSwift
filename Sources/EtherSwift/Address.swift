import CryptoSwift

enum AddressError: Error {
	case invalidAddressString(String)
	case invalidAddressBytes([Byte])
}

struct Address: Equatable {
	/// The 20 bytes of the address
	let bytes: [Byte]
	/// The hex string representation of the address
	let string: String
	/// Whether the string representation has a valid EIP-55 checksum
	let hasValidChecksum: Bool
}

extension Address {
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
	static var encodedTypeName: String { "address" }

	func encodedHead(tailOffset: Int) throws -> Bytes32 {
		Bytes32(rawValue: bytes.leftPadded(totalBytes: 32))
	}
}

private func checksumEncode(bytes: [Byte]) throws -> String {
	let address = bytes.toHexString().lowercased()
	var hasher = SHA3(variant: .keccak256)
	let hashed = try hasher.finish(withBytes: Array(address.utf8)).toHexString().lowercased()
	let checksumAddress = hashed.map { character in
		let stringCharacter = String(character)
		guard let intValue = Int(stringCharacter, radix: 16) else { return stringCharacter }
		return intValue >= 8 ? stringCharacter.uppercased() : stringCharacter
	}.joined()
	return "0x" + checksumAddress
}
