import Foundation

class UserDefaultsLessonFactory: LessonFactory {
    override func newLesson(viewController: UIViewController) -> UserDefaultsLesson {
        return UserDefaultsLesson(viewController: viewController)
    }
}