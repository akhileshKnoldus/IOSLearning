//
//  RegistrationViewController.swift
//  LoginDeatilStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
let kStoredUserName = "storedName"
let kStoredEmail = "storedEmail"
let KStorePass = "storedPass"
class RegistrationViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassWord: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    
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
    
    func moveToDetailsEntry()
    {
        let mainSB = UIStoryboard(name: "RegistrationViewController", bundle: nil)
        if let detailsEntry = mainSB.instantiateViewController(withIdentifier: "DetailsEntryViewController") as? DetailsEntryViewController {
            self.navigationController?.pushViewController(detailsEntry, animated: true)
        }
    
    func displayAlertMessage(userMessage : String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        //self.presentedViewController(myAlert, animated: true, completion: nil)
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
     //MARK:- IBAction Methods
    @IBAction func registartionButton(_ sender: Any) {
            if let name = userName.text , let psw = userPass.text , let mail = userEmail.text {
                if name.isEmpty , psw.isEmpty , mail.isEmpty {
                    displayAlertMessage(userMessage : "All Field are required")
                }
            }
        
        //Store Data
        UserDefaults.standard.set(userEmail.text, forKey: kStoredEmail)
        UserDefaults.standard.set(userPassWord.text, forKey: KStorePass)
        
         self.moveToDetailsEntry()
    }
    
    

    @IBAction func backLoggin(_ sender: Any) {
    }
}
