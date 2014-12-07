import Foundation

class SVProgressHUDLesson: Lesson {
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
