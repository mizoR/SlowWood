import Foundation

enum LessonType: Int {
    case AlertDialog = 0
    case SVProgressHUD
    case WebView

    static let data = [
        AlertDialog,
        SVProgressHUD,
        WebView,
    ]

    func title() -> String {
        switch self {
        case .AlertDialog:
            return "Show alert dialog with UIAlertController"
        case .SVProgressHUD:
            return "Show progress dialog with SVProgressHUD"
        case .WebView:
            return "Show web with UIWebView"
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
        case .WebView:
            return WebViewLessonFactory()
        default:
            fatalError("Factoryクラスの生成処理が定義されていません: \(self)")
        }
    }

    static func count() -> Int {
        return data.count
    }
}