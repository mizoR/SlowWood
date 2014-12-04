import Foundation

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let texts = [
        "1. UIAlertController",
        "2. Coming soon...",
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
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")

        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        if indexPath.row == 0 {
            showAlert()
        }
        Logger.info("click: \(texts[indexPath.row])")
    }
    
    func showAlert() {
        let alert: UIAlertController = UIAlertController(title: "Title", message: Fortune.sample(), preferredStyle: UIAlertControllerStyle.Alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { action in Logger.info("action: \(action)") }

        alert.addAction(ok)
        self.presentViewController(alert, animated: true) { Logger.info("Complete") }
    }
}