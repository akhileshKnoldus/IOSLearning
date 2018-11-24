//
//  ViewController.swift
//  LoginWithDB
//
//  Created by Akhilesh Gupta on 21/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    //MARK:- Variables
    
    var isSelector : Bool = true
    
    //MARK:- IBOutlet
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var segementSelector: UISegmentedControl!
    @IBOutlet weak var lblSigin: UILabel!
    @IBOutlet weak var btnSigin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tappedSelector(_ sender: Any) {
        
        isSelector = !isSelector
        
        if isSelector{
            lblSigin.text = "Sign In"
            btnSigin.setTitle("Sign In", for: .normal)
        } else {
            lblSigin.text = "Register"
            btnSigin.setTitle("Register", for: .normal)
        }
    }
    
    @IBAction func tappedSigin(_ sender: Any) {
        
        
        if let email = textFieldEmail.text , let password = textFieldPassword.text {
            
            //Check user is sigin or not
            if isSelector{
                // Sigin in the user with FireBase
                Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                    
                    //Check User is not nil
                    if let u = user {
                       self.performSegue(withIdentifier: "goToHome", sender: self)
                        
                        //User is found Go to Home Screen
                        
                    } else {
                        //Checck Error and Show Message
                    }
                }
            }else{
                //Register with FireBase
                
                Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                    //Check User is not nil
                    if let u = authResult {
                        self.performSegue(withIdentifier: "goToHome", sender: self)
                        //User is found Go to Home Screen
                        
                    } else {
                        //Checck Error and Show Message
                    }
                    
                }
                
            }
        }
        
    }
}

