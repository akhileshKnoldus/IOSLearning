//
//  RegistartionPageViewController.swift
//  Registartion
//
//  Created by Akhilesh Gupta on 19/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//
import UIKit

//let kUserEmial = ""
//let kUserPass =  ""
let kUserStoredEmail = "storedEmail"
let KUserStorePass = "storedPass"
let kUserStoredConfirmPass = "storeConfirmPass"

class RegistartionPageViewController: UIViewController {
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userConfirmTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func RegisterButtonClicked(_ sender: Any) {
        if let userEmail = userEmailTextField.text, let userPass = userPasswordTextField.text, let userConfirmPass = userConfirmTextField.text {
            if userEmail.isEmpty, userPass.isEmpty ,userConfirmPass.isEmpty{
                displayMyAlertMsg(userMessage: "All Field are required")
            }
        }
      //  _ = userPasswordTextField.text
        //_ = userConfirmTextField.text
//        if(userEmail.isEmpty || userPass.isEmpty || userConfirmPass.isEmpty){
//            displayMyAlertMsg("All Field are required");
//            return;
//        }
        if let userPass=userPasswordTextField.text , let userConfirmPass=userConfirmTextField.text{
            if userPass != userConfirmPass {
                displayMyAlertMsg(userMessage: "Email or Password Do not match")
            }
        }
       //Store Data
        UserDefaults.standard.set(userEmailTextField.text, forKey: kUserStoredEmail)
         UserDefaults.standard.set(userPasswordTextField.text, forKey: KUserStorePass)
        
        print(UserDefaults.standard.value(forKey: kUserStoredEmail))
        print(UserDefaults.standard.value(forKey: KUserStorePass))
        //NSUserDefaults.standardUserDefaults().setObject(userEmail,value(forKey: "userEmail"))
        //NSUserDefaults.standardUserDefaults().setObject(userEmail,value(forKey: "userPass"))
        UserDefaults.standard.synchronize();
        self.moveToWelcomeView()

        
//        //Display Alert Message
//        _ = UIAlertController(title: "Alert", message: "Registartion is Sucessfull . Thanku !", preferredStyle: UIAlertControllerStyle.alert)
//
//        _ = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){
//            ACTION in
//            self.dismiss(animated: true,completion: nil)
 //       }
    }
    
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
            welcomeVC.result = userEmailTextField.text
            self.navigationController?.pushViewController(welcomeVC, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
