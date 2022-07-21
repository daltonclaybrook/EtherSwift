enum JSONRPCVersion: String, Codable {
	case v1 = "1.0"
	case v2 = "2.0"
}

protocol JSONRPCMethodType: RawRepresentable, Encodable where RawValue == String {}

struct JSONRPCRequest<Method: JSONRPCMethodType, Params: Encodable>: Encodable {
	var rpcVersion: JSONRPCVersion
	var method: Method
	var params: Params?
	var id: Int
}

struct JSONRPCResponse<Success: Decodable, Failure: Decodable>: Decodable where Failure: Decodable {
	let rpcVersion: JSONRPCVersion
	let result: Result<Success, JSONRPCError<Failure>>
	let id: Int
}

struct JSONRPCError<ErrorData: Decodable>: Error, Decodable {
	let code: Int
	let message: String
	let data: ErrorData?
}
