//
//  ViewController.swift
//  moveFromOnePageToAnother
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var nameUITextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func moveToDisplay(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let detailview = sb.instantiateViewController(withIdentifier: "DisplayViewController") as? DisplayViewController{
            
            /*if let firstname = firstNameField.text, let lastName = lastNameField.text,let mobile=mobileField.text,let email=emailField.text,let bio=bioField.text {
                detailview.firstName = firstname
                detailview.lastname=lastName
                detailview.mobile=mobile
                detailview.email=email
                detailview.bio=bio
            }*/
            
            self.navigationController?.pushViewController(detailview, animated: true)
        }
    }
    
    
    @IBAction func clickedButton(_ sender: Any) {
    
   // moveToDisplay()
     let s=UIStoryboard(name: "Main", bundle: nil)
        
          if  let deta=s.instantiateViewController(withIdentifier: "DisplayViewController") as? DisplayViewController
          {
            self.navigationController?.pushViewController(deta, animated: true)
        }
    }
    
}

