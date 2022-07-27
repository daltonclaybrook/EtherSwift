// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "EtherSwift",
	products: [
		.library(name: "EtherSwift", targets: ["EtherSwift"]),
		.executable(name: "EtherSwiftDemo", targets: ["EtherSwiftDemo"])
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
		.executableTarget(name: "EtherSwiftDemo", dependencies: [
			"EtherSwift",
			"BigInt"
		]),
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
		)
	]
)
