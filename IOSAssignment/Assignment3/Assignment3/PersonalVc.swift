//
//  PersonalVc.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class PersonalVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedNextBtn(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        print(sb)
        if let detailview = sb.instantiateViewController(withIdentifier: " AddressVc")as? AddressVc
        {
            
            self.navigationController?.pushViewController(detailview, animated: true)
            print("Inside Tapped BTN")
        }
        print("Tab btn work")
        
    
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
