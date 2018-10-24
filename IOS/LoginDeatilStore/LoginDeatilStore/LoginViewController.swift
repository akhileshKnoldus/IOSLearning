//
//  ViewController.swift
//  LoginDeatilStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    //MARK:- Variables
    
    //MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private Methods
    
    func displayAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        //self.presentedViewController(myAlert, animated: true, completion: nil)
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
    func moveToDetailsEntry()
    {
        let mainSB = UIStoryboard(name: "LoginViewController", bundle: nil)
        if let detailsEntry = mainSB.instantiateViewController(withIdentifier: "DetailsEntryViewController") as? DetailsEntryViewController {
            self.navigationController?.pushViewController(detailsEntry, animated: true)
        }
    
    func moveToRegistation()
    {
      let mainSB = UIStoryboard(name: "LoginViewController", bundle: nil)
        if let regVC = mainSB.instantiateViewController(withIdentifier: "RegistrationViewController") as? RegistrationViewController {
            self.navigationController?.pushViewController(regVC, animated: true)
        }
    }
     //MARK:- IBAction Methods
    @IBAction func logginButton(_ sender: Any) {
        let mail = userEmail.text
        let pass = userPassword.text
        if let storeEmail = UserDefaults.standard.value(forKey: kStoredEmail) as? String,
            let storePass = UserDefaults.standard.value(forKey: KStorePass) as? String {
            if storeEmail == mail ,storePass == pass
            {
                self.moveToDetailsEntry()
            }
            else{
                displayAlertMessage(userMessage: "User Does Not Exist..")
            }
            
        }
    }
    
    
    @IBAction func registationButton(_ sender: Any) {
        moveToRegistation()
    }
    
  
}

