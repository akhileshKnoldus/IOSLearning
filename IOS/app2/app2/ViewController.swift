//
//  ViewController.swift
//  app2
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myswitch: UISwitch!
    @IBOutlet weak var myslider: UISlider!
    @IBOutlet weak var myprogress: UIProgressView!
    @IBOutlet weak var mylabel: UILabel!
   
    override func viewDidLoad() {
        mylabel.text="Hello ios"
    
        myprogress.progress=(myslider.value)/myslider.maximumValue
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func myslider(_ sender: Any) {
        
        myprogress.progress=(myslider.value)/myslider.maximumValue
        
    }
    @IBAction func `switch`(_ sender: Any) {
        if myswitch.isOn==true
        {
            mylabel.text="Switch on"
        }
        else
        {
             mylabel.text="Switch off"        }
    }
    
    @IBAction func mybutton(_ sender: Any) {
        
        mylabel.textColor=UIColor.red
    }
    
}

