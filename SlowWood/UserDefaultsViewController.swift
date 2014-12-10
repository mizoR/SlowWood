import Foundation

class UserDefaultsViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!

    @IBAction func counter(sender: AnyObject) {
        updateCount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func updateCount() {
        var userDefaults = NSUserDefaults.standardUserDefaults()
        var counter = userDefaults.integerForKey("countOfClicks") + 1

        userDefaults.setInteger(counter, forKey: "countOfClicks")
        userDefaults.synchronize()

        counterLabel.text = "\(counter) clicks"
    }
}