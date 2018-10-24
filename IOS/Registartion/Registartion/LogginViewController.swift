//
//  LogginViewController.swift
//  Registartion
//
//  Created by Akhilesh Gupta on 19/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

//let kEmail = "email"
//let kPass = "pass"

class LogginViewController: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPass: UITextField!
    
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
    
    func moveToWelcomeView() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let welcomeVC = mainSB.instantiateViewController(withIdentifier: "WelcomeViewC") as? WelcomeViewC {
            welcomeVC.result = userEmail.text
            self.navigationController?.pushViewController(welcomeVC, animated: true)
        }
    }
    
    func moveToRegistationView() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let regVC = mainSB.instantiateViewController(withIdentifier: "RegistartionPageViewController") as? RegistartionPageViewController {
            self.navigationController?.pushViewController(regVC, animated: true)
        }
    }
    
    //MARK:- IBAction Methods

    
    @IBAction func LogginButtonClicked(_ sender: Any) {
        let Email = userEmail.text
        let Pass = userPass.text
        
        //print(Email)
        //print(Pass)
        print(UserDefaults.standard.value(forKey: kUserStoredEmail))
        print(UserDefaults.standard.value(forKey: KUserStorePass))
        
        
        /*
        let storedEmail = UserDefaults.standard.set( userEmail.text, forKey: "Email")
        let storePass = UserDefaults.standard.set(userPass.text, forKey: "Pass")
     
        if (storedEmail == Email ,storePass == storePass{
                 UserDefaults.standard.set(true, forKey:"isUserLoggin")
                 UserDefaults.standard.synchronize();
                 self.dismiss(animated: true,completion: nil)

        }
         */
        // let s=UserDefaults.standard.set(userEmail.text,forKey: value(forKey: "Email") as! String)
        
       
          //if let storedEmail
  //      UserDefaults.standard.set( userEmail.text, forKey: kEmail)
    //    UserDefaults.standard.set(userPass.text, forKey: kPass)
      //  UserDefaults.standard.synchronize()
        //let storeEmail = UserDefaults.standard.value(forKey: kUserStoredEmail) as? String
        //let storePass = UserDefaults.standard.value(forKey: KUserStorePass) as? String
        
                
        
        if let storeEmail = UserDefaults.standard.value(forKey: kUserStoredEmail) as? String,
            let storePass = UserDefaults.standard.value(forKey: KUserStorePass) as? String {
            if storeEmail == Email ,storePass == Pass{
                //UserDefaults.standard.set(true, forKey:"isUserLoggin")
//                 displayMyAlertMsg(userMessage: "Loggin SucessFull")
//                self.dismiss(animated: true,completion: nil)
                self.moveToWelcomeView()
            }else{
                 displayMyAlertMsg(userMessage: "User Does Not Exist..")
            }
        }
        
        
        
        
    //print(storeEmail ?? <#default value#>)
       // print(storePass ?? <#default value#>)
        //let storePass=UserDefaults.standard.value(forKey: kPass)
        
       
//            if storeEmail == Email {
//            if  storePass == Pass {
//                UserDefaults.standard.set(true, forKey:"isUserLoggin")
//                UserDefaults.standard.synchronize();
//                self.dismiss(animated: true,completion: nil)
//                }
//            }
        }
    
    
    
    @IBAction func tapRegisterBtn(_ sender: UIButton) {
         self.moveToRegistationView()
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
