//
//  AViewController.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//
import UIKit

class AViewController: UIViewController , UITextFieldDelegate , UITextViewDelegate {
    
    //MARK:- IBOutlets
    @IBOutlet weak var adress1TextField: UITextField!
    @IBOutlet weak var adress2TextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var permanentAdress: UITextView!
   
     //MARK:- Variables
    var personalinfo = [String]()
    var dataInfo = [String]()
    var addname = [String]()
    var adddata = [String]()
    
     //MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.personalInfoArray()
        self.loadTextFiledAndTextView()
       
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK:- Private Methods
    func loadTextFiledAndTextView(){
        self.adress1TextField.delegate = self
        self.adress2TextField.delegate = self
        self.cityTextField.delegate = self
        self.zipTextField.delegate = self
        self.stateTextField.delegate = self
        self.permanentAdress.delegate = self
    }
    
    func personalInfoArray(){
        personalinfo.append("Name")
        personalinfo.append("Age")
        personalinfo.append("Email")
        personalinfo.append("Address")
        personalinfo.append("Dob")
        
        addname.append("Address1")
         addname.append("Address1")
         addname.append("ZipCode")
         addname.append("City")
        addname.append("State")
         addname.append("Padress")
        
    }
    
    func moveToDisplayVC(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let disp=sb.instantiateViewController(withIdentifier: "DViewController") as? DViewController
        {
            disp.data=dataInfo
            disp.filedname=personalinfo
            disp.adddata.append(adress1TextField.text!)
            disp.adddata.append(adress2TextField.text!)
            disp.adddata.append(zipTextField.text!)
            disp.adddata.append(cityTextField.text!)
            disp.adddata.append(stateTextField.text!)
            disp.adddata.append(permanentAdress.text!)
            disp.addfiledname=addname
            self.navigationController?.pushViewController(disp, animated: false)
        }
    }
  
    
    func displayMyAlertMsg(userMessage:String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        //self.presentedViewController(myAlert, animated: true, completion: nil)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    
    
    func  displayAlertMessage (userMessage : String){
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion:nil)
        
    }
    
    func validationOfTextField(){
        if let add1 = adress1TextField.text , let add2 = adress2TextField.text , let city = cityTextField.text , let zip = zipTextField.text ,  let state = stateTextField.text , let permanentAdd = permanentAdress.text {
            if add1.isEmpty , add2.isEmpty , city.isEmpty , zip.isEmpty , state.isEmpty , permanentAdd.isEmpty{
                displayAlertMessage(userMessage: "All Field are Required")
            }
        
        }
    }
    
    
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        if textField == adress1TextField {
            return true
        }
        else if textField == adress2TextField {
            return true
        }
        else if textField == cityTextField{
            return true
        }
        else if textField == zipTextField {
            return true
        }
        else if textField == stateTextField {
            return true
        }
        return true
    }
    
   
    func textFieldDidBeginEditing(_ textField: UITextField){
        
    }
 
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        if textField == adress1TextField {
            return true
        }
        else if textField == adress2TextField {
            return true
        }
        else if textField == cityTextField{
            return true
        }
        else if textField == zipTextField {
            return true
        }
        else if textField == stateTextField {
            return true
        }
        return true
    }
   
    
    func textFieldDidEndEditing(_ textField: UITextField){}
    
  
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        return true
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
//        return true
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
  
    public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return true
    }
    
    
    public func textViewShouldEndEditing(_ textView: UITextView) -> Bool{
        if textView == permanentAdress {
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
    @IBAction func adressSubmitBtn(_ sender: Any) {
        validationOfTextField()
        moveToDisplayVC()
        
        
    }
   
    @IBAction func tappedSubmitBtn(_ sender: Any) {
    }

}
