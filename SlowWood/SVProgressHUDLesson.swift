import Foundation

class SVProgressHUDLesson: Lesson {
    override class func title() -> String {
        return "Show progress dialog with SVProgressHUD"
    }

    override func start() {
        SVProgressHUD.show()

        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            sleep(1)

            dispatch_async(dispatch_get_main_queue()) {
                SVProgressHUD.dismiss()
            }
        }
    }
}
