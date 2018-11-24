//
//  ViewController.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    

    @IBOutlet weak var currencyConvertLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func jsonCall(){
        Alamofire.request("https://api.coindesk.com/v1/bpi/historical/close.json").responseJSON{
            response in
            print(response)
            
        }
    }

}

