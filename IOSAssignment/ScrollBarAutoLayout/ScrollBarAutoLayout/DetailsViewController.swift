//
//  DetailsViewController.swift
//  ScrollBarAutoLayout
//
//  Created by Akhilesh Gupta on 09/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    func moveToPersonalTableCell(){
     let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let personalTableCell = mainSB.instantiateViewController(withIdentifier: "PersonalTableViewCell") as? PersonalTableViewCell {
            self.navigationController?.pushViewController(personalTableCell, animated: true)
        }
    }
    
    func moveToAdressTableCell(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
    }

    @IBAction func personalInformationBtnClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func addressBtnClicked(_ sender: Any) {
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
