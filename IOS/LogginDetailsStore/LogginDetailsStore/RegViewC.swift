//
//  RegViewC.swift
//  LogginDetailsStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
let kStoredUserName = "storedName"
let kStoredEmail = "storedEmail"
let KStorePass = "storedPass"

class RegViewC: UIViewController {
    
     //MARK:- IBOutlets
    @IBOutlet weak var txtFieldUserName: UITextField!
    @IBOutlet weak var txtFieldUserEmail: UITextField!
    @IBOutlet weak var txtFieldUserPassword: UITextField!
    
    
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
        func moveToDetailEntryViewC()
        {
            let mainSB = UIStoryboard(name: "Main", bundle: nil)
            if let detailsEntry = mainSB.instantiateViewController(withIdentifier: "DetailEntryViewC") as? DetailEntryViewC {
                self.navigationController?.pushViewController(detailsEntry, animated: true)
            }
       }
            func displayAlertMessage(userMessage : String)
            {     print("EMTER IN ALERT MESSAGE")
                let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
                let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                myAlert.addAction(okAction)
                //self.presentedViewController(myAlert, animated: true, completion: nil)
                self.present(myAlert, animated: true, completion: nil)
    
            }
    
            //MARK:- IBAction Methods
    
    @IBAction func registrationButtonClicked(_ sender: Any) {
        print(txtFieldUserName.text)
        print(txtFieldUserEmail.text)
        print(txtFieldUserPassword.text)
        
        if let name = txtFieldUserName.text , let psw = txtFieldUserPassword.text , let mail = txtFieldUserEmail.text {
            if name.isEmpty , psw.isEmpty , mail.isEmpty {
                print( "All Field are required")
                displayAlertMessage(userMessage : "All Field are required")
            }
        }
        
        //Store Data
        UserDefaults.standard.set(txtFieldUserEmail.text, forKey: kStoredEmail)
        UserDefaults.standard.set(txtFieldUserPassword.text, forKey: KStorePass)
        let e = UserDefaults.standard.value(forKey: kStoredEmail)
        print(e)
        print( UserDefaults.standard.set(txtFieldUserPassword.text, forKey: KStorePass))
        print("Move to DetailsEntryViewC")
        self.moveToDetailEntryViewC()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  
    
}






