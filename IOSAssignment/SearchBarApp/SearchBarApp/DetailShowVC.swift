//
//  DetailShowVC.swift
//  SearchBarApp
//
//  Created by Akhilesh Gupta on 15/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DetailShowVC: UIViewController {

    @IBOutlet weak var imagView: UIImageView!
    @IBOutlet weak var bioUILabel: UILabel!
    @IBOutlet weak var lastNameUILabel: UILabel!
    @IBOutlet weak var firstNameUILabel: UILabel!
    
    var myDict: [String: AnyObject]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // print(<#T##items: Any...##Any#>)
        if let valueDict = self.myDict {
           
            if let name = valueDict["name"] as? String {
                self.firstNameUILabel.text = name
            }
            
            if let lastName = valueDict["lName"] as? String {
                self.lastNameUILabel.text = lastName
            }
            
            if let image = valueDict["image"] as? UIImage {
                self.imagView.image = image
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
