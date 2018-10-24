//
//  SecondViewController.swift
//  Segues
//
//  Created by Akhilesh Gupta on 23/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

protocol DataRecive {
    func didRecive(data: String)
}

class SecondViewController: UIViewController {

    var dataPass : String?
    
    var delegate: DataRecive?
    
    
    @IBOutlet weak var secondInputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        displayLabel.text = dataPass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func tappedBackBtn(_ sender: Any) {
        delegate?.didRecive(data: secondInputTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
