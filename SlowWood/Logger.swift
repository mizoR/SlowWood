import Foundation

class Logger {
    class func info(message: String, file: String = __FILE__, line: Int = __LINE__, function: String = __FUNCTION__) {
        println("\(file):\(line) in \(function)> \(message)")
    }
}
