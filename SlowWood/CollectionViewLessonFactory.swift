import Foundation

class CollectionViewLessonFactory: LessonFactory {
    override func create(viewController: UIViewController) -> Lesson {
        return CollectionViewLesson(viewController: viewController)
    }
}