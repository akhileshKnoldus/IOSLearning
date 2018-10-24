//
//  ViewController.swift
//  Segues
//
//  Created by Akhilesh Gupta on 23/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataRecive {
   

    @IBOutlet weak var firstScreenLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


    @IBAction func tappedDisplayBtn(_ sender: Any) {
        performSegue(withIdentifier: "segues", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segues" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.dataPass = inputTextField.text!
            destinationVC.delegate = self
        }
    }
    
    
    
    func didRecive(data: String) {
        firstScreenLabel.text = data
    }
    
}

