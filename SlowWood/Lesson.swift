import Foundation

class Lesson {
    var viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    func start() {
        fatalError("`\(__FUNCTION__)` must be overridden")
    }
 
    class func title() -> String {
        fatalError("`\(__FUNCTION__)` must be overridden")
    }
}