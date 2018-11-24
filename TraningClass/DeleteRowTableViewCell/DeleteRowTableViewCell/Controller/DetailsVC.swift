//
//  DetailsVC.swift
//  DeleteRowTableViewCell
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var name:String!
    var price:String!
    var  image: UIImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        details()

       
    }

    
    func details(){
        imgView.image = image
        lblName.text = name
        lblPrice.text = price
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
