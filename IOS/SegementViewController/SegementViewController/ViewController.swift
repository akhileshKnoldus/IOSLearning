//
//  ViewController.swift
//  SegementViewController
//
//  Created by Akhilesh Gupta on 20/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewController: UIView!
    var simpleVC1: UIView!
    var simpleVC2: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleVC1 = SimpleVC1().view
        simpleVC2 = SimpleVC2().view
        
        viewController.addSubview(simpleVC1)
        viewController.addSubview(simpleVC2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func segmentControllerAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 :viewController.bringSubview(toFront:simpleVC1)
                    break
            
                    case 1:
                        viewController.bringSubview(toFront: simpleVC2)
                    default:
                        break
                    }
    }
    
//    @IBAction func segementControllerAction(_ sender: Any) {
//        switch  sender.{
//        case 0:
//            viewController.bringSubview(toFront: simpleVC1)
//        break
//        case 1:
//            viewController.bringSubview(toFront: simpleVC2)
//        default:
//            break
//        }
//    }
}

