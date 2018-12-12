//
//  ViewController.swift
//  Review
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func tappedReviewBtn(_ sender: Any) {
        SKStoreReviewController.requestReview()
    }
    
}

