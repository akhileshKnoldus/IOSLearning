//
//  ViewController.swift
//  NavigationController
//
//  Created by Akhilesh Gupta on 20/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var mSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var state: String
        
        if(segue.identifier == "push"){
            state = "ON"
        }else{
            state = "OFF"
        }
    }

}

