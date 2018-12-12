

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource , UISearchBarDelegate {
  
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var arrayTrainees = [[String: AnyObject]]()
    var searchArray = [[String:AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        self.tabelView.delegate = self
        self.tabelView.dataSource = self
        self.searchBar.delegate = self
        self.searchBar.showsCancelButton = true
        arrayDataStored()
        self.tabelView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func arrayDataStored(){
        let firstDict = ["name": "Akhilesh" as AnyObject,"lName": "Gupta" as AnyObject, "image": #imageLiteral(resourceName: "6") as AnyObject]
        let Dict2 = ["name": "Abhijal" as AnyObject ,"lName": "Jha" as AnyObject, "image": #imageLiteral(resourceName: "6") as AnyObject]
        let Dict3 = ["name": "Sakhi" as AnyObject , "lName": "Singh" as AnyObject,"image": #imageLiteral(resourceName: "4") as AnyObject]
        let Dict4 = ["name": "Ashish" as AnyObject ,"lName": "Sir" as AnyObject, "image": #imageLiteral(resourceName: "5") as AnyObject]
        arrayTrainees.append(contentsOf: [firstDict, Dict2, Dict3, Dict4])
    }

    
    func registerNib(){
        let nib = UINib(nibName: "InformationTVCell", bundle: nil)
        self.tabelView.register(nib, forCellReuseIdentifier: "cell")
    }
    
    func moveToNewDataInsertVC(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let dataInsertVC = mainSb.instantiateViewController(withIdentifier: "NewDataInsertVC") as? NewDataInsertVC {
            self.navigationController?.pushViewController(dataInsertVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTrainees.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? InformationTVCell {
            
            let dict = self.arrayTrainees[indexPath.row]
            if let nameStr = dict["name"] as? String {
                cell.fName.text = nameStr
            }
            
            if let lastName = dict["lName"] as? String {
                cell.lName.text = lastName
            }
            
            if let img = dict["image"] as? UIImage{
                cell.imgView.image = img
            }
            return cell
            
        }
        else
        {
            return UITableViewCell()
        }
//
//    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
//        print("searchBarShouldBeginEditing")
//        return true
//    }
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("searchBarTextDidBeginEditing")
//    }
//
//        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//            print("searchText is: \(searchText)")
//            searchArray.removeAll()
//            let searchStr = searchText.lowercased()
//            if searchStr.isEmpty {
//                searchArray.append(contentsOf: arrayTrainees)
//                tabelView.reloadData()
//                return
//            }
//
//            let array = arrayTrainees.filter { (dict) -> Bool in
//                if let firstName = dict["name"]?.lowercased, let lastName = dict["lName"]?.lowercased {
//                    if firstName.contains(searchStr) || lastName.contains(searchStr) {
//                        return true
//                    }
//                }
//                return false
//            }
//
//            searchArray.append(contentsOf: array)
//            tabelView.reloadData()
//
//        }
//
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("index row: \(indexPath.row)")
        print("index section: \(indexPath.section)")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let detailShowVC = sb.instantiateViewController(withIdentifier: "DetailShowVC") as? DetailShowVC {
            let dict = self.arrayTrainees[indexPath.row]
            detailShowVC.myDict = dict
            self.navigationController?.pushViewController(detailShowVC, animated: true)
        }
        
    }
    
//    private func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
//        return CGFloat(width: 500.00, height: 200)
//         // return CG(width: 200.0, height: 200.0)
//
//    }
    
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let size = UIScreen.main.bounds.size
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: 30))
//        let myLabel = UILabel(frame: CGRect(x: 10, y: 0, width: size.width, height: 30))
//        myLabel.text = "This is \(section) section"
//        headerView.addSubview(myLabel)
//        myLabel.textColor = UIColor.black
//        headerView.backgroundColor = UIColor.orange
//        return headerView
//
//    }

    
//        func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//
//            print("shouldChangeTextIn")
//            return true
//        }
//
//        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//            print("searchBarCancelButtonClicked")
//            searchBar.resignFirstResponder()
//        }
    
    }
    @IBAction func tappedSubmitBtn(_ sender: Any) {
        moveToNewDataInsertVC()
    }
    
}

