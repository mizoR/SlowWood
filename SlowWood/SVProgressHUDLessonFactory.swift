import Foundation

class SVProgressHUDLessonFactory: LessonFactory {
    override func newLesson(viewController: UIViewController) -> SVProgressHUDLesson {
        return SVProgressHUDLesson(viewController: viewController)
    }
}
