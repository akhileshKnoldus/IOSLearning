//
//  StudentListViewC.swift
//  CoreDataDemo
//
//  Created by Akhilesh Gupta on 07/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

protocol DataParse {
    func data(object : [String : String] , index : Int , isEdit :Bool)
    
}
class StudentListViewC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    var dataParseDelegate : DataParse!
    
    var student = [Student]()
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        student = DatabaseHelper.sharedInstance.getStudentData()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func registerNib(){
        let nib = UINib(nibName: "StudentInfoCell", bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: "StudentInfoCell")
    }
    

}

extension StudentListViewC : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "StudentInfoCell") as? StudentInfoCell
        cell?.student = student[indexPath.row]
        return cell!
    }
    
    //Delete
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            student = DatabaseHelper.sharedInstance.deleteStudentData(index: indexPath.row)
            self.tblView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let dict = ["name" : student[indexPath.row].name , "email": student[indexPath.row].email , "mobile": student[indexPath.row].mobile , "address": student[indexPath.row].address]
        
//        dataParseDelegate.data(object: dict as! [String:String] ,index: indexPath.row , isEdit : true)
        
        dataParseDelegate.data(object : dict as! [String : String] , index : indexPath.row , isEdit : true)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
