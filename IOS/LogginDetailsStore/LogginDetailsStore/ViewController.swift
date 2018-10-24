//
//  ViewController.swift
//  LogginDetailsStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func moveToRegistationView() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let regVC = mainSB.instantiateViewController(withIdentifier: "RegViewC") as? RegViewC {
            self.navigationController?.pushViewController(regVC, animated: true)
        }
    }
    
    func moveToLoginViewC() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let logginVC = mainSB.instantiateViewController(withIdentifier: "LoginViewC") as? LoginViewC {
            self.navigationController?.pushViewController(logginVC, animated: true)
        }
    }

    @IBAction func registartionButtonClicked(_ sender: Any) {
        self.moveToRegistationView()
    }
    
    @IBAction func logginButtonClicked(_ sender: Any) {
        moveToLoginViewC()
    }

}

