@testable import EtherSwift
import XCTest

final class AddressTests: XCTestCase {
	func testInvalidBytesThrowsError() throws {
		let bytes: [Byte] = [1, 2, 3]
		XCTAssertThrowsError(try Address(bytes: bytes))
	}

	func testValidBytesDoesNotThrowError() throws {
		let bytes = [Byte](repeating: 0xab, count: 20)
		XCTAssertNoThrow(try Address(bytes: bytes))
	}

	func test_ifStringHasInvalidLength_errorIsThrown() throws {
		let string = "0xab12"
		XCTAssertThrowsError(try Address(string: string))
	}

	func test_ifStringHasInvalidCharacters_errorIsThrown() throws {
		let string = "0xD1220A0cf47c7B9Be7A2E6BA89F429762e7b9aDX"
		XCTAssertThrowsError(try Address(string: string))
	}

	func test_ifStringIsValid_noErrorIsThrown() throws {
		let string = "0xdbF03B407c01E7cD3CBea99509d93f8DDDC8C6FB"
		XCTAssertNoThrow(try Address(string: string))
	}

	func testBytesInitializerHasValidChecksum() throws {
		let bytes = [Byte](repeating: 0xab, count: 20)
		let address = try Address(bytes: bytes)
		XCTAssertTrue(address.hasValidChecksum)
		XCTAssertEqual(address.string, "0xABaBaBaBABabABabAbAbABAbABabababaBaBABaB")
	}

	func test_ifStringHasInvalidChecksum_addressHasInvalidChecksum() throws {
		let string = "0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359".lowercased()
		let address = try Address(string: string)
		XCTAssertFalse(address.hasValidChecksum)
	}

	func test_ifStringHasValidChecksum_addressHasValidChecksum() throws {
		let validStrings = [
			"0x5aAeb6053F3E94C9b9A09f33669435E7Ef1BeAed",
			"0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359",
			"0xdbF03B407c01E7cD3CBea99509d93f8DDDC8C6FB",
			"0xD1220A0cf47c7B9Be7A2E6BA89F429762e7b9aDb",
			"0xADe61Bc8c716d8244FfBb188d6dD5369C1CbE81D"
		]
		for string in validStrings {
			let address = try Address(string: string)
			XCTAssertTrue(address.hasValidChecksum)
		}
	}
}
