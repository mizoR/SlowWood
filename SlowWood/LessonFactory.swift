import Foundation

class LessonFactory {
    func create(viewController: UIViewController) -> Lesson {
        return newLesson(viewController)
    }

    // 抽象メソッドとして定義したい
    func newLesson(viewController: UIViewController) -> Lesson {
        fatalError("`\(__FUNCTION__)` must be overridden")
    }
}