//
//  EmployeeTableViewCell.swift
//  EmployeeDetails
//
//  Created by Akhilesh Gupta on 11/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var btnOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
//    @IBAction func btnTapped(_ sender: UIButton) {
//        func roundImage(){
//            imgView.layer.cornerRadius = imgView.frame.size.width/2
//            imgView.clipsToBounds = true
//        }
//        
//        if sender.isSelected {
//            sender.isSelected = false
//        }else{
//            sender.isSelected = true
//        }
//    }
    
}
