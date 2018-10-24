//
//  NewDataInsertVC.swift
//  SearchBarApp
//
//  Created by Akhilesh Gupta on 15/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class NewDataInsertVC: UIViewController , UITextFieldDelegate , UITextViewDelegate{
    
    
    @IBOutlet weak var fNameUITextField: UITextField!
    @IBOutlet weak var lNameUITextField: UITextField!
    @IBOutlet weak var bioUITextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == fNameUITextField{
            return true
        }
        else if textField == lNameUITextField {
            return true
        }
        
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == fNameUITextField{
            return true
        }
        else if textField == lNameUITextField {
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
        if textView == bioUITextView {
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
    

    
    func moveToVC(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let VC = mainSB.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            self.navigationController?.pushViewController(VC, animated: true)
        }
    }
    
    
    @IBAction func tappedDataSubmitBtn(_ sender: Any) {
        moveToVC()
    }
    

}
