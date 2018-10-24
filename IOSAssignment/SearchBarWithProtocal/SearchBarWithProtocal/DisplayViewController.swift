//
//  DisplayViewController.swift
//  SearchBarWithProtocal
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

     var myDict: [String: AnyObject]?
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var detailsUILabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let valueDict = self.myDict {
            
            if let name = valueDict["name"] as? String , let lName = valueDict["lName"] as? String{
                self.nameUILabel.text = name + " " + lName
            }
            
            if let image = valueDict["image"] as? UIImage {
                self.imgView.image = image
            }
        }
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
