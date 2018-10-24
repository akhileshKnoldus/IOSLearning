//
//  PViewController.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class PViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate{
    
    
    //MARK:- IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    //MARK:- Variables
    
    //MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTextFieldAndTextView()
        textFieldAndViewType()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Private Methods
    func textFieldAndViewType(){
        nameTextField.keyboardType = UIKeyboardType.alphabet
        emailTextField.keyboardType = UIKeyboardType.emailAddress
        ageTextField.keyboardType = UIKeyboardType.numberPad
        dobTextField.keyboardType = UIKeyboardType.default
        notesTextView.keyboardType = UIKeyboardType.default
    }
    
    func loadTextFieldAndTextView(){
        self.nameTextField.delegate = self
        self.emailTextField.delegate = self
        self.ageTextField.delegate = self
        self.dobTextField.delegate = self
        self.notesTextView.delegate = self
    }
    
    func moveToAdressVC(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let addVC = sb.instantiateViewController(withIdentifier: "AViewController")as? AViewController
        {
            // addVC.name = nameTextField.text
            addVC.dataInfo.append(nameTextField.text!)
            addVC.dataInfo.append(emailTextField.text!)
            addVC.dataInfo.append(ageTextField.text!)
            addVC.dataInfo.append(dobTextField.text!)
            addVC.dataInfo.append(notesTextView.text!)
            self.navigationController?.pushViewController(addVC, animated: true)
        }
    }
    
    func displayAlertMessage(userMessage : String ){
        let myAlert = UIAlertController(title: "Alert", message:userMessage, preferredStyle:.alert)
        let okAction = UIAlertAction(title: "OkAction", style:UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
    func validationOfTextFiledAndView() -> Bool  {
        
        if (nameTextField.text=="" && emailTextField.text=="" && dobTextField.text=="" && ageTextField.text=="" )
         {
            
            displayAlertMessage(userMessage: "Field can not be empty")
            return false
        }
        
        else
        {
            return true
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            return true
        }
        else  if textField == emailTextField
        {
            return true
        }
        else if textField == ageTextField
        {
            return true
        }
        else if textField == dobTextField
        {
            return true
        }
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if  textField == nameTextField
        {
            return true
        }
        else if textField == emailTextField {
            return true
        }
        else if textField == ageTextField {
            return true
        }
        else if textField == dobTextField {
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
        if textView == notesTextView {
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
    
    //MARK:- IBAction Methods
    @IBAction func tappedNextbtn(_ sender: Any) {
         var bol = validationOfTextFiledAndView()
            if bol==true
        {
            moveToAdressVC()
        }
        else
        {
            
        }
    }
    
    
    
}
