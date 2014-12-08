import Foundation

class WebViewLesson: Lesson {
    override func start() {
        Logger.info("WebViewLesson#start")
        
        let webStoryboard = UIStoryboard(name: "Web", bundle: nil)
        let webViewController = webStoryboard.instantiateInitialViewController() as UIViewController
        self.viewController.navigationController?.pushViewController(webViewController, animated: true)
    }
}