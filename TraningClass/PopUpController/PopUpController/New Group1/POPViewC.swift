//
//  POPViewC.swift
//  PopUpController
//
//  Created by Akhilesh Gupta on 28/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class POPViewC: UIViewController {

    @IBOutlet var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSelectClick(_ sender: UIButton) {
        let popController = PopoverController(items: setupPopItem(), fromView: btnClick, direction: .up, reverseHorizontalCoordinates: true, style: PopoverStyle.normal, initialIndex: 1) {
            print("Yeah Done !!")
        }
        popover(popController)
    }
    
    
    private func setupPopItem() -> [PopoverItem]{
       
        let fb = PopoverItem(title: "FB", titleColor: .clear, image: #imageLiteral(resourceName: "a3")){
            debugPrint($0.title) // code here for click event
        }
        let twitter = PopoverItem(title: "Twitter", titleColor: .clear, image: #imageLiteral(resourceName: "a2")){
            debugPrint($0.title) // code here for click event
        }
        let linkedin = PopoverItem(title: "Linkedin", titleColor: .clear, image: #imageLiteral(resourceName: "a4")){
            debugPrint($0.title) // code here for click event
        }
        return [fb, twitter, linkedin]
    }
    

   

}
