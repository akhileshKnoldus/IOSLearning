//
//  ViewController.swift
//  TextFieldDelegates
//
//  Created by Akhilesh Gupta on 20/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var msgTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        msgTextField.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Allow to Edit")
        return true
    }

 
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("User is Editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       print("Editing is Done")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("Enter was Press")
        return true
    }
    
   
        
        
       
    
    
    
    
}

