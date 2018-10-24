//
//  DisplayViewController.swift
//  TextFieldDelegatesProject
//
//  Created by Akhilesh Gupta on 08/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    
    var name: String?
    var password : String?
    var email : String?
    var mobile : String?
    var addres : String?
    
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var passwordUILabel: UILabel!
    @IBOutlet weak var emailUILabel: UILabel!
    @IBOutlet weak var mobileUILabel: UILabel!
    @IBOutlet weak var addressUILabel: UILabel!
    
    override func viewDidLoad() {

        
        self.displayData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayData(){
        nameUILabel.text = name
        passwordUILabel.text = password
        emailUILabel.text = email
        mobileUILabel .text = mobile
        addressUILabel .text = addres
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
