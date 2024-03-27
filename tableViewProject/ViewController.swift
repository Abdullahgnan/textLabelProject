
import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var landMarkPic = [UIImage]()
    var landMarkText = [String]()
    var chosenPic = UIImage()
    var chosenText = String()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landMarkText[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenText = landMarkText[indexPath.row]
        chosenPic = landMarkPic[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        landMarkPic = [UIImage(named: "pic1")!,UIImage(named: "pic2")!,UIImage(named: "pic3")!]
        landMarkText = ["agac","manzara","dag"]
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectedImage = chosenPic
            destinationVC.selectedText = chosenText
        }
    }
}

