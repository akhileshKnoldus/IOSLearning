//
//  Extension+UIViewController.swift
//  Extension
//
//  Created by Akhilesh Gupta on 31/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation

import UIKit

extension UIViewController{
    
    func popupAlert(title : String , message : String , actionTitles:[String] ,actionStyle : [UIAlertAction.Style] , action : [((UIAlertAction) -> Void )]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:.alert)
        for (index , title) in actionTitles.enumerated(){
            let action = UIAlertAction(title: title, style: actionStyle[index], handler: action[index])
            alert.addAction(action)
        }
        self.present(alert , animated: true , completion:  nil)
    }
    
    
    func hidekeybordWhenTappedArraound(){
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeybord))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeybord(){
    view.endEditing(true)
    }
 
}
