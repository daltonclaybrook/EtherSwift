public enum EthereumRPCMethod: String, JSONRPCMethodType {
	case call = "eth_call"
	case estimateGas = "eth_estimateGas"
}
