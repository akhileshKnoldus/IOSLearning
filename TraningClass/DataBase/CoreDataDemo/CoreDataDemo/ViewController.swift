
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Akhilesh Gupta on 07/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataParse{
    
    
 
    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldMobile: UITextField!
    @IBOutlet weak var txtFieldAddress: UITextField!
    var i = Int()
    var isUpdate = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func moveToStudentList(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let studentList = mainSb.instantiateViewController(withIdentifier: "StudentListViewC") as? StudentListViewC{
            studentList.dataParseDelegate = self
            self.navigationController?.pushViewController(studentList, animated: true)
        }
    }
    
    
    func data(object: [String : String], index: Int, isEdit: Bool) {
        txtFieldName.text = object["name"]
        txtFieldEmail.text = object["email"]
        txtFieldMobile.text =  object["mobile"]
        txtFieldAddress.text = object["address"]
        i = index
        isUpdate = isEdit
    }
    
    
    @IBAction func tappedSaveBtn(_ sender: Any) {
        let dict = ["name" : txtFieldName.text, "email" : txtFieldEmail.text, "mobile" : txtFieldMobile.text, "address": txtFieldAddress.text]
        
      if  isUpdate {
        DatabaseHelper.sharedInstance.editData(object: dict as! [String : String], i: i)
        
        }else{
        DatabaseHelper.sharedInstance.save(object: dict as! [String : String])
        
        }
       
    }
    
    @IBAction func tappedShowData(_ sender: Any) {
        moveToStudentList()
        
    }
    
    
    
    
}

