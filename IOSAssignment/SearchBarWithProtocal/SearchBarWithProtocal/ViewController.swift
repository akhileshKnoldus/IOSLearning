//
//  ViewController.swift
//  SearchBarWithProtocal
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource  , CutomDelegate ,MyCutomDelegate{
    

    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tabelViewData: UITableView!
    
    
    var arrayTrainees = [[String: AnyObject]]()
    var searchArray = [[String:AnyObject]]()
    var newEntryData = [[String:String]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        self.tabelViewData.delegate = self
        self.tabelViewData.dataSource = self
        self.searchBar.delegate = self
        self.searchBar.showsCancelButton = true
        arrayDataStored()
        self.tabelViewData.reloadData()
        searchArray=arrayTrainees
    }
    
//    func loadData(newData: [String : AnyObject]) {
//        arrayTrainees.append(newData as [String : AnyObject])
//        tabelViewData.reloadData()
//    }
    func loadData(newData: INsertNewDataViewController) {
        if  let  a = newData.firstNameTextField.text ,  let b = newData.lastNameTextField.text ,  let c = newData.detaislUITextView.text
        {
            print("Data of a and b \(a) + \(b)")
            var newArray = ["name" : a as AnyObject,"lName" : b  as AnyObject, "image" :  #imageLiteral(resourceName: "images1") as AnyObject ]
            arrayTrainees.append(newArray as [String : AnyObject])
        searchArray=arrayTrainees
        }
        //print(arrayTrainees)
        tabelViewData.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func registerNib(){
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tabelViewData.register(nib, forCellReuseIdentifier: "cell")
    }
    
    func arrayDataStored(){
        let firstDict = ["name": "Akhilesh" as AnyObject,"lName": "Gupta" as AnyObject, "image": #imageLiteral(resourceName: "images1") as AnyObject]
        let Dict2 = ["name": "Abhijal" as AnyObject ,"lName": "Jha" as AnyObject, "image": #imageLiteral(resourceName: "images2") as AnyObject]
        let Dict3 = ["name": "Sakhi" as AnyObject , "lName": "Singh" as AnyObject,"image": #imageLiteral(resourceName: "images3") as AnyObject]
        let Dict4 = ["name": "Ashish" as AnyObject ,"lName": "Sir" as AnyObject, "image": #imageLiteral(resourceName: "download") as AnyObject]
        arrayTrainees.append(contentsOf: [firstDict, Dict2, Dict3, Dict4])
        
    }
    
    func moveToNewDataInsertVC(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let dataInsertVC = mainSb.instantiateViewController(withIdentifier: "INsertNewDataViewController") as? INsertNewDataViewController {
            dataInsertVC.customCellDelegate=self
            self.navigationController?.pushViewController(dataInsertVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tabelViewData.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell {
            cell.customCellDelegate = self as? MyCutomDelegate
            let dict = self.searchArray[indexPath.row]
            
            if let nameStr = dict["name"] as? String , let lname = dict["lName"] as? String {
                cell.nameLabel.text = nameStr + " " + lname
            }
            
            if let img = dict["image"] as? UIImage{
                cell.imgView.image = img
            }
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("index row: \(indexPath.row)")
//        print("index section: \(indexPath.section)")
//
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        if let displayViewController = sb.instantiateViewController(withIdentifier: "DisplayViewController") as? DisplayViewController {
//            let dict = self.arrayTrainees[indexPath.row]
//            displayViewController.myDict = dict
//            self.navigationController?.pushViewController(displayViewController, animated: true)
//        }
//
//    }
    
    func detailButtonClicked(cell: UITableViewCell) {
        
            print("click on detail it is in VC: \(cell)")
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            if let indexPath = self.tabelViewData.indexPath(for: cell),  let dispVC = sb.instantiateViewController(withIdentifier: "DisplayViewController") as? DisplayViewController {
                
                let dict = self.arrayTrainees[indexPath.row]
                dispVC.myDict = dict
                self.navigationController?.pushViewController(dispVC, animated: true)
            }
        }

    
    //MARK:- Search Bar Logic
    
    @IBAction func newDataEntry(_ sender: Any) {
        moveToNewDataInsertVC()
    }
}

extension ViewController :UISearchBarDelegate
{
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        print("searchBarShouldBeginEditing is start")
        return true
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("searchBarTextDidBeginEditing")
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("searchText is: \(searchText)")
        searchArray.removeAll()
        let searchStr = searchText.lowercased()
        
        if searchStr.isEmpty {
            searchArray.append(contentsOf: arrayTrainees)
            tabelViewData.reloadData()
            return
        }
        
        let array = arrayTrainees.filter { (myDict) -> Bool in
            if let firstName = myDict["name"]?.lowercased, let lastName = myDict["lName"]?.lowercased {
                if firstName.contains(searchStr) || lastName.contains(searchStr) {
                    return true
                }
            }
            return false
        }
        
        searchArray.append(contentsOf: array)
        tabelViewData.reloadData()
        
    }
    
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//
////       guard !searchText.isEmpty else
////       {
////        searchArray=arrayTrainees
////        tabelViewData.reloadData()
////        return
////        }
////        searchArray=arrayTrainees.filter({arrayTrainees -> Bool in
////            var name=arrayTrainees["name"] as? String
////             var lname=arrayTrainees["lName"] as? String
////             //var bio=arrayTrainees["name"] as? String
////            return (name?.lowercased().contains(searchText.lowercased()))! || (lname?.lowercased().contains(searchText.lowercased()))!
////        })
////        tabelViewData.reloadData()
//    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("shouldChangeTextIn")
        return true
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("searchBarCancelButtonClicked")
        searchBar.resignFirstResponder()
    }
}
