import Foundation

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let texts = [
        "1. UIAlertController",
        "2. SVProgressHUD",
        "3. Coming soon...",
    ]

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")

        cell.textLabel.text = texts[indexPath.row]

        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        Logger.info("click: \(texts[indexPath.row])")

        switch indexPath.row {
        case 0:
            var factory = AlertDialogLessonFactory(viewController: self)
            var lesson = factory.create()

            lesson.start()
        case 1:
            var factory = SVProgressHUDLessonFactory(viewController: self)
            var lesson = factory.create()

            lesson.start()
        default:
            break
        }
    }
}
