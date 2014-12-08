import Foundation

class WebViewLessonFactory: LessonFactory {
    override func newLesson(viewController: UIViewController) -> WebViewLesson {
        return WebViewLesson(viewController: viewController)
    }
}