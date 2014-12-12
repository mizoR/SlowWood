import Foundation
import Alamofire

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let response = Alamofire.request(.GET, "http://example.com/")
        Logger.info("\(response)")

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LessonType.count()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")

        if let lessonType = LessonType.init(rawValue: indexPath.row) {
            cell.textLabel?.text = lessonType.title()
        }

        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        Logger.info("click: \(indexPath.row)")

        if let lessonType = LessonType.init(rawValue: indexPath.row) {
            var factory = lessonType.createFactory()
            var lesson = factory.create(self)
            lesson.start()
        }
    }
}
