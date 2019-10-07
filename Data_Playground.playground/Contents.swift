import UIKit

var str = "Hello, I am a string"

if let dataString = str.data(using: .utf8) {
    let str2 = String(data: dataString, encoding: .utf8)
    
}
