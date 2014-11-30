import Foundation

class Alert {
    class func show(title: String, _ message: String, _ buttons: [String] = ["OK"]) {
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        for button in buttons {
            alert.addButtonWithTitle(button)
        }
        alert.show()
    }
}