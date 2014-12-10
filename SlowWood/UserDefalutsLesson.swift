import Foundation

class UserDefaultsLesson: Lesson {
    override func start() {
        Logger.info("UserDefaultsLesson#start")

        let userDefaultsStoryboard = UIStoryboard(name: "UserDefaults", bundle: nil)
        let userDefaultsViewController = userDefaultsStoryboard.instantiateInitialViewController() as UIViewController
        self.viewController.navigationController?.pushViewController(userDefaultsViewController, animated: true)
    }
}