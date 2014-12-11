import Foundation

class CollectionViewLesson: Lesson {
    override func start() {
        Logger.info("CollectionViewLesson#start")
        
        let collectionStoryboard = UIStoryboard(name: "Collection", bundle: nil)
        let collectionViewController = collectionStoryboard.instantiateInitialViewController() as UIViewController
        self.viewController.navigationController?.pushViewController(collectionViewController, animated: true)
    }
}