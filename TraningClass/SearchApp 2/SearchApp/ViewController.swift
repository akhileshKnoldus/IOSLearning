//
//  ViewController.swift
//  SearchApp
//
//  Created by Ashish Chauhan on 15/10/18.
//  Copyright © 2018 AppVenturez. All rights reserved.
//

import UIKit

let fName = "FirstName"
let lName = "LastName"

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var searcBar: UISearchBar!
    
    var myArray: [[String: String]] = [[String: String]]()
    var myAllArray: [[String: String]] = [[String: String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        searcBar.showsCancelButton = true
        myArray.append([fName: "Ashihs", lName: "Chauhan"])
        myArray.append([fName: "Akhilesh", lName: "Gupta"])
        myArray.append([fName: "Abichal", lName: "Jha"])
        myArray.append([fName: "Sakshi", lName: "Singh"])
        myArray.append([fName: "Suryansh", lName: "Srivastava"])
        myArray.append([fName: "Kirti", lName: "Kalra"])
        myAllArray.append(contentsOf: myArray)
        self.myTable.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension ViewController: UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let myDict = myArray[indexPath.row]
        if let firstName = myDict[fName], let lastName = myDict[lName] {
            cell.textLabel?.text = firstName + " " + lastName
        }
        
        return cell
        
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        print("searchBarShouldBeginEditing")
        return true
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("searchBarTextDidBeginEditing")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    
        print("searchText is: \(searchText)")
        myArray.removeAll()
        let searchStr = searchText.lowercased()
        
        if searchStr.isEmpty {
            myArray.append(contentsOf: myAllArray)
            myTable.reloadData()
            return
        }        
        
        let array = myAllArray.filter { (myDict) -> Bool in
            if let firstName = myDict[fName]?.lowercased(), let lastName = myDict[lName]?.lowercased() {
                if firstName.contains(searchStr) || lastName.contains(searchStr) {
                    return true
                }
            }
            return false
        }
        
        myArray.append(contentsOf: array)
        myTable.reloadData()
        
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        print("shouldChangeTextIn")
        return true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("searchBarCancelButtonClicked")
        searchBar.resignFirstResponder()
    }
    
    
}

