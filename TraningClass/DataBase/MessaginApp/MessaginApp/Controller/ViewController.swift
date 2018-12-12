//
//  ViewController.swift
//  MessaginApp
//
//  Created by Akhilesh Gupta on 27/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "logOut", style: .plain, target: self, action: #selector(logOut))
        
    }
    @objc func logOut(){
        let logginController = LoginController()
        present(logginController , animated: true , completion:  nil)
       // presentedViewController(logginController , animated: true, completion: nil)
        
    }
  
    

}

