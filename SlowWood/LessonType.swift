import Foundation

enum LessonType: Int {
    case AlertDialog = 0
    case SVProgressHUD

    static let data = [
        AlertDialog,
        SVProgressHUD,
    ]

    func title() -> String {
        var title = "\(self.rawValue). "

        switch self {
        case .AlertDialog:
            title += AlertDialogLesson.title()
        case .SVProgressHUD:
            title += SVProgressHUDLesson.title()
        default:
            title += "Title is not defined"
        }

        return title
    }

    func createFactory(viewController: UIViewController) -> LessonFactory {
        switch self {
        case .AlertDialog:
            return AlertDialogLessonFactory(viewController: viewController)
        case .SVProgressHUD:
            return SVProgressHUDLessonFactory(viewController: viewController)
        default:
            fatalError("Factoryクラスの生成処理が定義されていません: \(self)")
        }
    }

    static func count() -> Int {
        return data.count
    }
}