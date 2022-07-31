import BigInt
import EtherSwift
import Foundation

let number: UInt64 = 123456
var _number = number.bigEndian
let bigNumber = BigUInt("123456")

let numberData = withUnsafeBytes(of: &_number, Array.init)
let bigNumberData = bigNumber.serialize()

let equal = numberData.leftPadded(totalBytes: 32) == Array(bigNumberData).leftPadded(totalBytes: 32)
print(equal)

