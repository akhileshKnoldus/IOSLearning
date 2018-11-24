//
//  SignupVC.swift
//  UIExperiments
//
//  Created by Akhilesh Gupta on 01/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {
    
    //MARK:- IBOutlet
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var txtFieldConfrimPassword: UITextField!
    @IBOutlet weak var txtFieldMobileNo: UITextField!
    @IBOutlet weak var btnSinup: UIButton!
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setup()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private Method
    
    private func setup(){
        self.btnSinup.layer.cornerRadius = 0.5 * btnSinup.bounds.size.width
        self.btnSinup.layer.cornerRadius = 0.5 * btnSinup.bounds.size.height
        self.btnSinup.clipsToBounds = true
        
        self.imgView.layer.cornerRadius = imgView.bounds.size.width/2
        self.imgView.clipsToBounds = true
    }
    
    //MARK: - IBAction
    @IBAction func tappedSubmitBtn(_ sender: Any) {
    }
}

extension SignupVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
