//
//  DetailEntryViewC.swift
//  LogginDetailsStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

let kName = "name"
let kEmail = "email"
let kAddress = "address"

class DetailEntryViewC: UIViewController ,UITextFieldDelegate , UITextViewDelegate{

    //MARK:- IBOutlets
    @IBOutlet weak var txtFieldUserName: UITextField!
    @IBOutlet weak var txtFiledUserEmail: UITextField!
    @IBOutlet weak var txtViewAddress: UITextView!
    
    var dictDetail = [String: Any]()
    var arrDetail = [[String: Any]]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtViewAddress.isEditable = true
        txtViewAddress.autocorrectionType = UITextAutocorrectionType.yes
       
        dictDetail[kName] = "Akhilesh"
        dictDetail[kEmail] = "akhi9722@gmail.com"
        dictDetail[kAddress] = "Noida"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private Methods
    func displayAlertMsg(userMessage : String){
     let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default , handler: nil)
        myAlert.addAction(okAction)
         self.present(myAlert, animated: true, completion: nil)
    }
    func moveToDisplayDetailsViewC(){
    let mainSb = UIStoryboard(name: "Main", bundle: nil)
        if let detailsVC = mainSb.instantiateViewController(withIdentifier: "DisplayDetailsViewC") as? DisplayDetailsViewC {
            self . navigationController?.pushViewController(detailsVC, animated: true)
            print(self.arrDetail)
            detailsVC.passValue(data: self.arrDetail)
        }
    }
    @IBAction func submitedDetailEtry(_ sender: Any) {
        if let name = txtFieldUserName.text , let email = txtFiledUserEmail.text , let address = txtViewAddress.text {
            if name.isEmpty , email.isEmpty , address.isEmpty{
                displayAlertMsg(userMessage : "Please Enter all Details")
            }
        }
        dictDetail[kName] = txtFieldUserName.text
        dictDetail[kEmail] = txtFiledUserEmail.text
        dictDetail[kAddress] = txtViewAddress.text
        
        arrDetail.append(dictDetail)
        print(arrDetail)
        
        
    }
    @IBAction func displayDetails(_ sender: Any) {
        self.moveToDisplayDetailsViewC()
    }
    
   /*
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIScrollView.setContentOffset(CGPointMake(0, 255), animated : true)
    } */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtFieldUserName.resignFirstResponder()
        txtFiledUserEmail.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.txtViewAddress.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        txtViewAddress.backgroundColor = UIColor.gray
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        txtViewAddress.backgroundColor = UIColor.white
    }


}
