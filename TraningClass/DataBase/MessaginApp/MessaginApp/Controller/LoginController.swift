//
//  LoginController.swift
//  MessaginApp
//
//  Created by Akhilesh Gupta on 27/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = UIColor(displayP3Red: 61/253, green: 91/255, blue: 151/255, alpha: 1)
       view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        inputScreen()
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func inputScreen(){
        
        let inputContainerView = UIView()
        inputContainerView.backgroundColor = UIColor.white
        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputContainerView)
        
        //need x , y height and width
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor , constant : -24).isActive = true
       inputContainerView.widthAnchor.constraint(equalTo: view.heightAnchor , constant : 150).isActive = true
    }
    
}


extension UIColor {
    convenience  init(r: CGFloat , g:CGFloat , b:CGFloat) {
        self.init(red : r/255 , green : g/255 , blue : b/255 , alpha : 1)
    }
    
}
