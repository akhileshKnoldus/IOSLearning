//
//  INsertNewDataViewController.swift
//  SearchBarWithProtocal
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//


protocol CutomDelegate: class {
    
    func loadData(newData:INsertNewDataViewController )
}

import UIKit

var kFName:String = "Akhilesh"
var kLName:String = "Gupta"
var kDetails:String = "Noida"

class INsertNewDataViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate   {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var detaislUITextView: UITextView!
    
    var fName:String?
    var lName:String?
    var details:String?
    
    weak var customCellDelegate: CutomDelegate?
    
    var newDataInserted = [[String: AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameTextField.delegate=self
        self.lastNameTextField.delegate = self
        self.detaislUITextView.delegate = self
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let toolbar:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0,  width: self.view.frame.size.width, height: 40))
        
        //create left side empty space so that done button set on right side
        let flexSpace = UIBarButtonItem(barButtonSystemItem:    .flexibleSpace, target: nil, action: nil)
        
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction(_:)))
        
        toolbar.setItems([flexSpace ,done], animated: false)
        toolbar.sizeToFit()
        self.detaislUITextView.inputAccessoryView = toolbar
        }
    
    @objc func doneButtonAction(_ sender : Any)
    {
        detaislUITextView.resignFirstResponder()
    }
        
    
    
//    func newDataInsertedArray(){
//
//        fName = firstNameTextField.text
//        lName = lastNameTextField.text
//        details = detaislUITextView.text
//
//
//        let firstDict = [kFName : fName as? AnyObject, kLName : lName as? AnyObject , kDetails: details as? AnyObject]
//
//        newDataInserted.append(firstDict as [String : AnyObject])
//        print(newDataInserted)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == firstNameTextField{
            return true
        }
        else if textField == lastNameTextField {
            return true
        }
        
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if textField == firstNameTextField{
            return true
        }
            
        else if textField == lastNameTextField {
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
    
    public func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
       
        if textView == detaislUITextView {
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
//        let mainSB = UIStoryboard(name: "Main", bundle: nil)
//        if let VC = mainSB.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
//
       if let mydeligate = self.customCellDelegate
            {
                mydeligate.loadData(newData: self)
            }
            
              //self.navigationController?.pushViewController(VC, animated: true)
           self.navigationController?.popViewController(animated: false)
//        }
    
    }
   
    @IBAction func addNewData(_ sender: Any) {
        print("BeforeData Inserted")
        //newDataInsertedArray()
        print("dataInserted")
        moveToVC()
    }
    
}
