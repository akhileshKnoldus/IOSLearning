//
//  ViewController.swift
//  UlLabelWork
//
//  Created by Akhilesh Gupta on 21/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var result:String = ""
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 @IBOutlet var showButton: [UILabel]!
    @IBAction func displayButton(_ sender: Any) {
        
     result = inputTextField.text!
     displayLabel.text = "\(result)"
        
    }
    
   
}

