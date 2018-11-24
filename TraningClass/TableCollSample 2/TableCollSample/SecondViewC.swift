//
//  SecondViewC.swift
//  TableCollSample
//
//  Created by Ashish Chauhan on 09/10/18.
//  Copyright © 2018 AppVenturez. All rights reserved.
//

import UIKit

class SecondViewC: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    var myDict: [String: AnyObject]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("my dict is: \(myDict)")
        
        
        if let valueDict = self.myDict {
           
            if let name = valueDict["name"] as? String {
                self.lblName.text = name
            }
            
            if let image = valueDict["image"] as? UIImage {
                self.profileImage.image = image
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
