//
//  LoginViewC.swift
//  LogginDetailsStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
class LoginViewC: UIViewController , UITextFieldDelegate{
    //MARK:- IBOutlets
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    
    
    //MARK:- Variables
    
    //MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:- Private Methods
    func displayMyAlertMsg(userMessage:String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        //self.presentedViewController(myAlert, animated: true, completion: nil)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    func moveToDetailEntryViewC() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let DetailEntryViewC = mainSB.instantiateViewController(withIdentifier: "DetailEntryViewC") as? DetailEntryViewC {
            self.navigationController?.pushViewController(DetailEntryViewC, animated: true)
        }
    }
    
    func moveToRegistationView() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let regVC = mainSB.instantiateViewController(withIdentifier: "RegViewC") as? RegViewC {
            self.navigationController?.pushViewController(regVC, animated: true)
        }
    }
    
    
    //MARK:- IBAction Methods
    
    
    @IBAction func logginButtonClicked(_ sender: Any) {
        let Email = txtFieldEmail.text
        let Pass = txtFieldPassword.text
        
        if let email = txtFieldEmail.text , let psw = txtFieldPassword.text {
            if email.isEmpty , psw.isEmpty{
                displayMyAlertMsg(userMessage: "All filed are requied")
            }
            }
        
        
        if let storeEmail = UserDefaults.standard.value(forKey:kStoredEmail ) as? String,
            let storePass = UserDefaults.standard.value(forKey: KStorePass) as? String {
            if storeEmail == Email ,storePass == Pass{
                //UserDefaults.standard.set(true, forKey:"isUserLoggin")
                //                 displayMyAlertMsg(userMessage: "Loggin SucessFull")
                //                self.dismiss(animated: true,completion: nil)
                self.moveToDetailEntryViewC()
            }else{
                displayMyAlertMsg(userMessage: "User Does Not Exist..")
            }
        }
    }
    
    @IBAction func registrationButtonClicked(_ sender: Any) {
        self.moveToRegistationView()
    }
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtFieldEmail.resignFirstResponder()
         txtFieldPassword.resignFirstResponder()
        return true
    }
}





