//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Akhilesh Gupta on 28/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var lblDisplayText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        txtField.delegate = self
    }
    
    @IBAction func tappedSubmitBtn(_ sender: Any) {
        
    }
}

extension ViewController : UITextFieldDelegate {
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // return NO to disallow editing.
        print("1 textFieldShouldBeginEditing")
        return true
        
    }
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        print("2 textFieldDidBeginEditing")
        // became first responder
        //return true
    }
    
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        print("3 textFieldShouldEndEditing")
        return true
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) { // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
        print("4 textFieldDidEndEditing")
        
    }
    public func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("5 textFieldDidEndEditing")
        // if implemented, called in place of textFieldDidEndEditing:
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("6 shouldChangeCharactersIn")
        // return NO to not change text
        return true
    }
    
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // called when clear button pressed. return NO to ignore (no notifications)
        print("7 textFieldShouldClear")
        return true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print("8 textFieldShouldReturn")
        txtField.resignFirstResponder()
    
        return true
    }
    
}

