import Foundation

class AlertDialogLesson: Lesson {
    override func start() {
        let alert = UIAlertController(title: "Title", message: Fortune.sample(), preferredStyle: UIAlertControllerStyle.Alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { action in Logger.info("action: \(action)") }

        alert.addAction(ok)

        self.viewController.presentViewController(alert, animated: true) { Logger.info("Complete") }
    }
}