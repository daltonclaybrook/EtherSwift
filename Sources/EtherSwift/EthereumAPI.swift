import Foundation

enum EthereumAPIError: Error {
	case invalidRPCResponse
	case invalidHTTPStatusCode(code: Int)
}

public final class EthereumAPI {
	private let session: URLSession
	private let jsonRPCURL: URL

	public init(jsonRPCURL: URL) {
		self.session = URLSession(configuration: .default)
		self.jsonRPCURL = jsonRPCURL
	}

	public func perform<Params: Encodable, Success: Decodable, Failure: Decodable>(method: EthereumRPCMethod, params: Params) async throws -> JSONRPCResponse<Success, Failure> {
		var urlRequest = URLRequest(url: jsonRPCURL)
		urlRequest.httpMethod = "POST"
		urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")

		let rpcRequest = JSONRPCRequest(rpcVersion: .v2, method: method, params: params, id: 1)
		let encoder = JSONEncoder()
		urlRequest.httpBody = try encoder.encode(rpcRequest)

		let (data, _) = try await session.data(for: urlRequest)
		let decoder = JSONDecoder()
		return try decoder.decode(JSONRPCResponse.self, from: data)
	}
}