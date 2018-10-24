//
//  DisplayViewController.swift
//  ScrollBarAutoLayout
//
//  Created by Akhilesh Gupta on 09/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    
    @IBOutlet weak var tbViewData: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "PersonalTableViewCell", bundle: nil)
        self.tbViewData.register(nib, forCellReuseIdentifier: "cell")
        
        
        let nib1 = UINib(nibName: "AdressTableViewCell", bundle: nil)
        self.tbViewData.register(nib1, forCellReuseIdentifier: "addressCell")

        // Do any additional setup after loading the view.
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
