import UIKit

var string = "Hello, I am a string"

guard var dataString = string.data(using: .utf8) else {
    fatalError()
}
dataString
// Now become to Base64
let data64 = dataString.base64EncodedData(options: .lineLength64Characters)
let string64 = dataString.base64EncodedString(options: .lineLength64Characters)
// Come back
let normalData = Data(base64Encoded: data64)
let normalDataC64 = Data(base64Encoded: string64, options: .ignoreUnknownCharacters)
String(data: normalDataC64!, encoding: .utf8)

// Access to Array
dataString.withUnsafeBytes { (data: UnsafePointer<Int>) in
    print(data)
}

dataString.withUnsafeBytes {
    $0.pointee
} as Int

withUnsafeBytes(of: &dataString) {
    for byte in $0 {
        print(byte)
    }
}
