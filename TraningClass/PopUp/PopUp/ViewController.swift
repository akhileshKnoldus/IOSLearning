//
//  ViewController.swift
//  PopUp
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    @IBAction func alertButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "My Alert Title ", message: "My Alert Message", preferredStyle: .alert)
        //Text Field Include
        alert.addTextField { (textField) in
            textField.placeholder = "Enter Yours Name"
        }
        
        
        //Cancel Button
        let action = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel Button Clicked")
            print(alert.textFields?.first?.text)
        }
        alert.addAction(action)
        present(alert ,animated: true , completion: nil)
    }
    
    
    @IBAction func actionSheetButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Action Sheet", message: "Action Sheet", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Action Sheet Cancel Button Clicked")
        }
        alert.addAction(action)
        present(alert , animated: true ,completion: nil)
    }
    
}

