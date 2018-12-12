//
//  FormViewController.swift
//  ProtocalDemo
//
//  Created by Akhilesh Gupta on 30/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
//1st
protocol FormInformation {
    func getData(firstName:String , middleName:String , lastName:String)
}
class FormViewController: UIViewController {

    //2nd
    var formInformation: FormInformation!
    
    @IBOutlet weak var txtFieldLastName: UITextField!
    @IBOutlet weak var txtFieldMiddleName: UITextField!
    @IBOutlet weak var txtFieldFirstName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    @IBAction func tappedSaveData(_ sender: Any) {
        //3rd
    formInformation.getData(firstName: txtFieldFirstName.text!, middleName: txtFieldMiddleName.text!, lastName: txtFieldLastName.text!)
    }
    
}
