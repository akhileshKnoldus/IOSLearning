//
//  ViewController.swift
//  ScrollBarAutoLayout
//
//  Created by Akhilesh Gupta on 09/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func moveToDetailsVC(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if   let detailsVC = mainSB.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController {
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        moveToDetailsVC()
    }
}

