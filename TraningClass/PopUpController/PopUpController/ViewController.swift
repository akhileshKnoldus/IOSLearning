//
//  ViewController.swift
//  PopUpController
//
//  Created by Akhilesh Gupta on 28/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnClicked : UIButton!
    
    @IBAction func tappedBtn(_ sender : UIButton){
        let popController = PopoverController(items: setupPopItem(), fromView: btnClicked, direction: .up, reverseHorizontalCoordinates: true, style: PopoverStyle.normal, initialIndex: 1){
            print ("Done")
        }
        
    }

    private func setupPopItem() -> [PopoverItem]{
        let google = PopoverItem(title: "Google ", titleColor: .clear, image: <#T##UIImage?#>){
            debugPrint($0.title)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

}

