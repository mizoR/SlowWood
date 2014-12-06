import Foundation

class LessonFactory {
    var viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    func create() -> Lesson {
        return newLesson(self.viewController)
    }

    // 抽象メソッドとして定義したい
    func newLesson(viewController: UIViewController) -> Lesson {
        fatalError("`\(__FUNCTION__)` must be overridden")
    }
}