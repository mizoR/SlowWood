import Foundation

enum LessonType: Int {
    case AlertDialog = 0
    case SVProgressHUD

    static let data = [
        AlertDialog,
        SVProgressHUD,
    ]

    func title() -> String {
        switch self {
        case .AlertDialog:
            return "Show alert dialog with UIAlertController"
        case .SVProgressHUD:
            return "Show progress dialog with SVProgressHUD"
        default:
            "no title"
        }
    }

    func createFactory() -> LessonFactory {
        switch self {
        case .AlertDialog:
            return AlertDialogLessonFactory()
        case .SVProgressHUD:
            return SVProgressHUDLessonFactory()
        default:
            fatalError("Factoryクラスの生成処理が定義されていません: \(self)")
        }
    }

    static func count() -> Int {
        return data.count
    }
}