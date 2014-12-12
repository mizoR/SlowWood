import Foundation

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        let hue = CGFloat(arc4random_uniform(255)) / 255.0
        cell.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)

        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 40
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        Logger.info("Clicked: \(indexPath.row)-\(indexPath.section)")
    }
}