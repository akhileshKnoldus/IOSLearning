//
//  ViewController.swift
//  APICallDemo
//
//  Created by Akhilesh Gupta on 10/12/18.
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
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        callLoginAPI()
    }
    
    private func callLoginAPI() {
        
        var params: APIParams = [:]
        params["m_number"] = 7385255 as AnyObject
        params["phone_number"] = 987654345 as AnyObject

        APIManager.shared.request(apiRouter: APIRouter.init(endpoint: .login(param: params))) { (response, success) in
            print(success)
            print(response)
        }
    }

}

