//
//  ViewController.swift
//  Steper
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lnlValue: UILabel!
    
    @IBOutlet weak var steper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func valueChange(_ sender: Any) {
        lnlValue.text = steper.value.description
    }
    
}

