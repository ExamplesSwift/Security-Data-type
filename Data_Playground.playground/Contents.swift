import UIKit

var str = "Hello, I am a string"

if let dataString = str.data(using: .utf8) {
    if let str2 = String(data: dataString, encoding: .utf8) {
        print(str2)
    }
    
}
