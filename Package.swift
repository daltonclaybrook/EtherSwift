// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "EtherSwift",
	products: [
		.library(name: "EtherSwift", targets: ["EtherSwift"])
	],
	dependencies: [
		.package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0"),
		.package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.5.1")
	],
	targets: [
		.target(name: "EtherSwift", dependencies: [
			"BigInt",
			"CryptoSwift"
		]),
		.testTarget(name: "EtherSwiftTests", dependencies: [
			"EtherSwift",
			"BigInt",
			"CryptoSwift"
		])
	]
)
