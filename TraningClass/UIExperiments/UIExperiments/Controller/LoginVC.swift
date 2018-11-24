//
//  LoginVC.swift
//  UIExperiments
//
//  Created by Akhilesh Gupta on 01/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    //MARK:- IBOutlet
    @IBOutlet weak var imgProfileImage: UIImageView!
    @IBOutlet weak var txtFiledEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    //MARK:- Private methods
    private func setup(){
        self.imgProfileImage.layer.cornerRadius = imgProfileImage.bounds.size.width/2
        //imgProfileImage.layer.cornerRadius = imgProfileImage.bounds.size.height/2
        
    }

}
