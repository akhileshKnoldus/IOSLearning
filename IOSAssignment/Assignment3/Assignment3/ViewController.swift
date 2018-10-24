//
//  ViewController.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
class ViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate{
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var defineYorselfTextView: UITextView!
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadDelegates()
        self.InputTypeOfTextFiled()
        loadImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private methods
    func loadDelegates(){
        self.nameTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextFiled.delegate = self
        self.defineYorselfTextView.delegate = self
    }
    
    func loadImage(){
        img.image=UIImage(named: "1.jpeg")
    }
    
    func InputTypeOfTextFiled(){
        
        nameTextField.keyboardType = UIKeyboardType.alphabet
        emailTextField.keyboardType = UIKeyboardType.emailAddress
        passwordTextFiled.keyboardType = UIKeyboardType.default
        defineYorselfTextView.keyboardType = UIKeyboardType.alphabet
    }
    
    func displayAlertMessage( userMessage : String ) {
        let alert = UIAlertController(title: "Alert", message: userMessage, preferredStyle:.alert)
        let okAction = UIAlertAction(title: "OkAction", style: UIAlertActionStyle.default, handler:nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func vlaidationOfTextField(){
        if let name = nameTextField.text , let email = emailTextField.text , let password = passwordTextFiled.text , let defineYourSelf = defineYorselfTextView.text {
            if name.isEmpty , email.isEmpty , password.isEmpty , defineYourSelf.isEmpty {
                displayAlertMessage(userMessage: "All Filed are required")
            }
        }
    }
    
    func moveToPersonalVC(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let pVC = sb.instantiateViewController(withIdentifier: "PViewController") as? PViewController
        {
            self.navigationController?.pushViewController(pVC, animated: true)
        }
    }
    
    //Mark:- IBAction Methods
    @IBAction func tapSubmit(_ sender: Any) {
        vlaidationOfTextField()
        moveToPersonalVC()
    }
    
    
}

