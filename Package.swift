// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "EtherSwift",
	platforms: [
		.macOS(.v12),
		.iOS(.v15),
		.tvOS(.v15),
		.watchOS(.v8)
	],
	products: [
		.library(name: "EtherSwift", targets: ["EtherSwift"]),
		.plugin(name: "GenerateContracts", targets: ["GenerateContracts"]),
		.executable(name: "EtherSwiftDemo", targets: ["EtherSwiftDemo"]),
	],
	dependencies: [
		.package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0"),
		.package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.5.1")
	],
	targets: [
		.target(
			name: "EtherSwift",
			dependencies: [
				"BigInt",
				"CryptoSwift"
			]
		),
		.testTarget(name: "EtherSwiftTests", dependencies: [
			"EtherSwift",
			"BigInt",
			"CryptoSwift"
		]),
		.plugin(
			name: "GenerateTypes",
			capability: .command(
				intent: .custom(verb: "generate-types", description: "Generate Ethereum-compatible types"),
				permissions: [.writeToPackageDirectory(reason: "To add generated files")]
			),
			dependencies: []
		),
		.plugin(
			name: "GenerateContracts",
			capability: .buildTool(),
			dependencies: ["GenerateContractsExec"]
		),
		.executableTarget(name: "GenerateContractsExec", dependencies: ["EtherSwift"]),
		.executableTarget(
			name: "EtherSwiftDemo",
			dependencies: [
				"EtherSwift",
				"BigInt"
			],
			plugins: ["GenerateContracts"]
		)
	]
)
