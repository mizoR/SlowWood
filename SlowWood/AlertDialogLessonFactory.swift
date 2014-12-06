import Foundation

class AlertDialogLessonFactory: LessonFactory {
    override func newLesson(viewController: UIViewController) -> Lesson {
        return AlertDialogLesson(viewController: viewController)
    }
}