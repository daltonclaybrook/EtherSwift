@testable import EtherSwift
import XCTest

final class ContractFunctionTests: XCTestCase {
	func testFunctionSelectorIsEncodedCorrectly1() throws {
		// baz(uint32,bool)
		let subject = try ContractFunction(name: "baz", parametersTypes: [.uint(bits: 32), .bool])
		let selector = "0x" + subject.selector.toHexString()
		XCTAssertEqual(selector, "0xcdcd77c0")
	}

	func testFunctionSelectoIsEncodedCorrectly2() throws {
		// bar(bytes3[2])
		let subject = try ContractFunction(name: "bar", parametersTypes: [.fixedArray(length: 2, element: .bytes(count: 3))])
		let selector = "0x" + subject.selector.toHexString()
		XCTAssertEqual(selector, "0xfce353f6")
	}

	func testFunctionSelectoIsEncodedCorrectly3() throws {
		// sam(bytes,bool,uint256[])
		let subject = try ContractFunction(name: "sam", parametersTypes: [.variableBytes, .bool, .variableArray(element: .uint(bits: 256))])
		let selector = "0x" + subject.selector.toHexString()
		XCTAssertEqual(selector, "0xa5643bf2")
	}

	func testFunctionSelectoIsEncodedCorrectly4() throws {
		// f(uint256,uint32[],bytes10,bytes)
		let subject = try ContractFunction(name: "f", parametersTypes: [.uint(bits: 256), .variableArray(element: .uint(bits: 32)), .bytes(count: 10), .variableBytes])
		let selector = "0x" + subject.selector.toHexString()
		XCTAssertEqual(selector, "0x8be65246")
	}
}
