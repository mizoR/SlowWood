import Foundation

enum LessonType: Int {
    case AlertDialog = 0
    case SVProgressHUD
    case WebView
    case UserDefaults
    case CollectionView

    static let data = [
        AlertDialog,
        SVProgressHUD,
        WebView,
        UserDefaults,
        CollectionView,
    ]

    func title() -> String {
        switch self {
        case .AlertDialog:
            return "アラートダイアログを表示する"
        case .SVProgressHUD:
            return "プログレスダイアログを表示する"
        case .WebView:
            return "WebViewでGoogleを表示する"
        case .UserDefaults:
            return "クリック数をNSUserDefaultsに保存する"
        case .CollectionView:
            return "CollectionViewで画像を表示する"
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
        case .UserDefaults:
            return UserDefaultsLessonFactory()
        case .CollectionView:
            return CollectionViewLessonFactory()
        default:
            fatalError("Factoryクラスの生成処理が定義されていません: \(self)")
        }
    }

    static func count() -> Int {
        return data.count
    }
}