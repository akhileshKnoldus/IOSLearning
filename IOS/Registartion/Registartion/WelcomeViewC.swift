//
//  WelcomeViewC.swift
//  Registartion
//
//  Created by Akhilesh Gupta on 20/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class WelcomeViewC: UIViewController {

    var result:String?
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayLabel.text = result
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
