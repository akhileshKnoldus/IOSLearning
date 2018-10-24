//
//  TextFieldViewController.swift
//  app2
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController {

    @IBOutlet weak var mystepper: UIStepper!
    @IBOutlet weak var mytextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stepper(_ sender: Any) {
        mytextfield.text = String(mystepper.value)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
