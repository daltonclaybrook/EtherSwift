public enum JSONRPCVersion: String, Codable {
	case v1 = "1.0"
	case v2 = "2.0"
}

public protocol JSONRPCMethodType: RawRepresentable, Encodable where RawValue == String {}

public struct JSONRPCRequest<Method: JSONRPCMethodType, Params: Encodable>: Encodable {
	public var rpcVersion: JSONRPCVersion
	public var method: Method
	public var params: Params?
	public var id: Int
}

public struct JSONRPCResponse<Success: Decodable, Failure: Decodable>: Decodable where Failure: Decodable {
	let rpcVersion: JSONRPCVersion
	let result: Result<Success, JSONRPCError<Failure>>
	let id: Int
}

public struct JSONRPCError<ErrorData: Decodable>: Error, Decodable {
	let code: Int
	let message: String
	let data: ErrorData?
}
