import Foundation
import PackagePlugin

@main
struct GenerateInts: CommandPlugin {
	func performCommand(context: PluginContext, arguments: [String]) async throws {
		let targetNames = targetNamesFrom(arguments: arguments)
		let targets = try context.package.targets(named: targetNames)

		let fileManager = FileManager.default
		let fileContents = generatedIntegerFileContents()

		for target in targets {
			let generatedFolder = target.directory.appending(["Generated"])
			let filePath = generatedFolder.appending(["Integers.swift"])

			try fileManager.createDirectory(atPath: generatedFolder.string, withIntermediateDirectories: true)
			try fileContents.write(toFile: filePath.string, atomically: true, encoding: .utf8)
		}
	}

	// MARK: - Private helpers

	private func targetNamesFrom(arguments: [String]) -> [String] {
		zip(arguments, arguments.indices).compactMap { argument, index in
			guard argument == "--target" else { return nil }
			return arguments[arguments.index(after: index)]
		}
	}

	private func generatedIntegerFileContents() -> String {
		let existingIntBits = [8, 16, 32, 64]
		let implementations = (1...32).flatMap { index -> [String] in
			let bits = index * 8
			guard !existingIntBits.contains(bits) else { return [] }
			return [
				integerImplementation(typeNamePrefix: "UInt", bits: bits, rawValueType: "BigUInt", paddingByte: "0x00"),
				integerImplementation(typeNamePrefix: "Int", bits: bits, rawValueType: "BigInt", paddingByte: "0xff")
			]
		}

		let contents = implementations.joined(separator: "\n\n")
		return """
			// THIS IS A GENERATED FILE

			import BigInt

			\(contents)

			"""
	}

	private func integerImplementation(typeNamePrefix: String, bits: Int, rawValueType: String, paddingByte: String) -> String {
		let typeName = "\(typeNamePrefix)\(bits)"
		let literalTypeName = "\(typeNamePrefix)64"
		let encodedTypePrefix = typeNamePrefix.lowercased()
		return """
			/// Corresponds to the `\(encodedTypePrefix)\(bits)` type in Solidity
			public struct \(typeName): RawRepresentable, ABIType, ExpressibleByIntegerLiteral {
				public typealias IntegerLiteralType = \(literalTypeName)

				public var rawValue: \(rawValueType)
				public let headLength = 32

				public init(rawValue: \(rawValueType)) {
					self.rawValue = rawValue
				}

				public init(integerLiteral value: \(literalTypeName)) {
					self.rawValue = \(rawValueType)(value)
				}

				public func encode(_ type: EncodedType, with encoder: inout ABIEncoder) throws {
					try type.assertEquals(type: .\(encodedTypePrefix)(bits: \(bits)))
					let bytes = rawValue.serialize().leftPadded(totalBytes: 32, paddingByte: \(paddingByte))
					try encoder.appendStatic(bytes: bytes)
				}
			}
			"""
	}
}
