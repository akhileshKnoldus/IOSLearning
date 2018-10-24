//
//  ViewController.swift
//  TextFieldDelegatesProject
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate{
    @IBOutlet weak var nameUITextField: UITextField!
    @IBOutlet weak var adressUITextView: UITextView!
    @IBOutlet weak var passwordUITextField: UITextField!
    @IBOutlet weak var emailUITextField: UITextField!
    @IBOutlet weak var mobileUITextField: UITextField!
    
    override func viewDidLoad() {
        //Load delegates
        self.nameUITextField.delegate = self
        self.adressUITextView.delegate = self
        self.passwordUITextField.delegate = self
        self.emailUITextField.delegate = self
        self.mobileUITextField.delegate = self
        nameUITextField.keyboardType=UIKeyboardType.alphabet
        adressUITextView.keyboardType=UIKeyboardType.default
        passwordUITextField.keyboardType=UIKeyboardType.default
        emailUITextField.keyboardType=UIKeyboardType.emailAddress
        mobileUITextField.keyboardType=UIKeyboardType.numberPad
        super.viewDidLoad()
        // ......*****************......//
        let toolbar:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0,  width: self.view.frame.size.width, height: 40))
        
        //create left side empty space so that done button set on right side
        let flexSpace = UIBarButtonItem(barButtonSystemItem:    .flexibleSpace, target: nil, action: nil)
        
        let done: UIBarButtonItem=UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction(_:)))
        
        toolbar.setItems([flexSpace ,done], animated: false)
        toolbar.sizeToFit()
        self.mobileUITextField.inputAccessoryView = toolbar
        self.adressUITextView.inputAccessoryView = toolbar
        
        // ........****************.....//

        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func doneButtonAction(_ sender : Any)
    {
        //self.view.endEditing(true)
        mobileUITextField.resignFirstResponder()
        adressUITextView.resignFirstResponder()
    }
    func moveToDisplayViewController(){
        let sb = UIStoryboard(name: "Main", bundle:nil)
        if let  displayVC = sb.instantiateViewController(withIdentifier: "DisplayViewController") as? DisplayViewController {
            
            
                       displayVC.name = nameUITextField.text
                      displayVC.password = passwordUITextField.text
                        displayVC.email = emailUITextField.text
                      displayVC.mobile = mobileUITextField.text
                        self.navigationController?.pushViewController(displayVC, animated : true)
            //self.navigationController?.pushViewController(displayVC, animated : true)
        }
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == nameUITextField {
            return true
        }
        else  if textField == passwordUITextField
        {
            return true
        }
        else if textField == emailUITextField
        {
            return true
        }
        else if textField == mobileUITextField
        {
            return true
        }
        else if textField == adressUITextView
        {
            return true
        }
        
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if  textField == nameUITextField
        {
            return true
        }
        else if textField == passwordUITextField {
            return true
        }
        else if textField == emailUITextField {
            return true
        }
        else if textField == mobileUITextField {
            return true
        }
        
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return true
    }
    public func textViewShouldEndEditing(_ textView: UITextView) -> Bool{
        if textView == adressUITextView {
            return true
        }
        return true
    }
    public func textViewDidBeginEditing(_ textView: UITextView)-> Bool{
        return true
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
        print("INSIDE SUBMIT BUTTON")
      moveToDisplayViewController()
        print("After MoveToDisplay")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}

