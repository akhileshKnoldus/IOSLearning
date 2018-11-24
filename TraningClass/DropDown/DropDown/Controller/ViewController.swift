//
//  ViewController.swift
//  DropDown
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedButton: UIButton!
    
    @IBOutlet var city: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func city1Clicked(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
    }
    
    @IBAction func city2Clicked(_ sender: Any) {
        self.view.backgroundColor = UIColor.brown
    }
    
    @IBAction func city3Clciked(_ sender: Any) {
    }
    
    
    @IBAction func city4Clciked(_ sender: Any) {
    }
    
    @IBAction func SelectedCity(_ sender: Any) {
        city.forEach { (Button) in
            
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
}

