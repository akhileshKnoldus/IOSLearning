//
//  ViewController.swift
//  suryanshSirAssignment
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate{

    @IBOutlet weak var nameUITextField: UITextField!
    @IBOutlet weak var emailUITextField: UITextField!
    @IBOutlet weak var passwordUITextField: UITextField!
    @IBOutlet weak var phoneUITextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadDelegates()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func loadDelegates(){
        self.nameUITextField.delegate = self
        self.emailUITextField.delegate = self
        self.passwordUITextField.delegate = self
        self.phoneUITextField.delegate = self
    }
    
    
    func moveToSecondVC(){
        
        let mainSb = UIStoryboard(name: "Main", bundle:nil)
        if let secondVC = mainSb.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    
    @IBAction func tappedSubmitBtn(_ sender: Any) {
        moveToSecondVC()
    }
  
}
