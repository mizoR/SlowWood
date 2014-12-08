import Foundation

class WebViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Web view"

        webView.delegate = self

        let url = NSURL(string: "http://google.com/")
        let request = NSURLRequest(URL: url!)

        webView.loadRequest(request)
    }
}