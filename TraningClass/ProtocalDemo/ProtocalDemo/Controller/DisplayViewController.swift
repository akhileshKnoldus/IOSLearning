//
//  DisplayViewController.swift
//  ProtocalDemo
//
//  Created by Akhilesh Gupta on 30/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
//4th
class DisplayViewController: UIViewController , FormInformation{
   
    

    
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblMiddleName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    //5th
    func getData(firstName: String, middleName: String, lastName: String) {
        lblFirstName.text = firstName
        lblMiddleName.text = middleName
        lblLastName.text = lastName
    }
    
    func moveToFormFill(){
        let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let formFillVC = mainSb.instantiateViewController(withIdentifier:"FormViewController" ) as? FormViewController {
            //6th
            formFillVC.formInformation = self
            self.navigationController?.pushViewController(formFillVC, animated: true)
        }
    }
    
    @IBAction func tappedFillForm(_ sender: Any) {
        moveToFormFill()
    }
}
