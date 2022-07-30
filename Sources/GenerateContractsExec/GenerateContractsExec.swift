import Foundation

@main
struct GenerateContractsExec {
	/// Main entry point into executable
	static func main() {
		let arguments = ProcessInfo.processInfo.arguments
		print("tool received arguments: \(arguments)")
	}
}
