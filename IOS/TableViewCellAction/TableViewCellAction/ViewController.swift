//
//  ViewController.swift
//  TableViewCellAction
//
//  Created by Akhilesh Gupta on 21/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    var indexSelected: Int?
    
    //MARK:- View Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = animals[ indexSelected ?? 0]
        descLabel.text = animalDesc[indexSelected ?? 0]
        
        imageView.image = UIImage(named: animals[indexSelected ?? 0])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

