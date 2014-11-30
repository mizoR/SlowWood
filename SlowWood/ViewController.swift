import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Logger.info("Hello World")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startLoading(sender: AnyObject) {
        SVProgressHUD.show()
    }

    @IBAction func login(sender: AnyObject) {
        var username: String = usernameField.text!
        var password: String = passwordField.text!

        SVProgressHUD.show()

        if authenticate(username, password) {
            Logger.info("ログインに成功!! (ノ´▽`)ノｵｵｵｵｯ♪")
            SVProgressHUD.dismiss()
        } else {
            Logger.info("ログインに失敗!! (つД｀;)ふぇ～ん")

            SVProgressHUD.dismiss()
            Alert.show("ログイン失敗", "ユーザ名かパスワードが誤っています。")
        }
    }

    private func authenticate(username: String, _ password: String) -> Bool {
        // FIXME: 正しい認証ロジックに書き換える

        return username == "boo" && password == "foo"
    }
}

