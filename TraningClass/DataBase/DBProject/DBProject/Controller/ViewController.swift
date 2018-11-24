//
//  ViewController.swift
//  DBProject
//
//  Created by Akhilesh Gupta on 21/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref : DatabaseReference?
    var dataBaseHandle : DatabaseHandle?
    
    //MARK:- Variables
    
    var postData = [String]()
    
    //MARK:- IBOutlets
     @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        
        //DataBase Deleget
        ref = Database.database().reference()
        reteriveData()
        
    }
    
    // MARK:- READ DATA
    func reteriveData(){
        dataBaseHandle = ref?.child("Name:").observe(.childAdded, with: {(snapshort) in
            
            let post = snapshort.value as? String
            if let actualPost = post{
                self.postData.append(actualPost)
                self.tblView.reloadData()
            }
        
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = postData[indexPath.row]
        return cell!
    }
}

