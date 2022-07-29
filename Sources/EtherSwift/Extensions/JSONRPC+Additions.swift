import Foundation

public extension JSONRPCRequest {
	enum CodingKeys: String, CodingKey {
		case rpcVersion = "jsonrpc"
		case method
		case params
		case id
	}
}

public extension JSONRPCResponse {
	enum CodingKeys: String, CodingKey {
		case rpcVersion = "jsonrpc"
		case result
		case error
		case id
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.rpcVersion = try container.decode(JSONRPCVersion.self, forKey: .rpcVersion)
		self.id = try container.decode(Int.self, forKey: .id)
		if let success = try container.decodeIfPresent(Success.self, forKey: .result) {
			self.result = .success(success)
		} else {
			let failure = try container.decode(JSONRPCError<Failure>.self, forKey: .error)
			self.result = .failure(failure)
		}
	}
}
