//
//  StudentInfoCell.swift
//  CoreDataDemo
//
//  Created by Akhilesh Gupta on 07/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class StudentInfoCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
     @IBOutlet weak var lblEmail: UILabel!
     @IBOutlet weak var lblMobile: UILabel!
     @IBOutlet weak var lblAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    var student: Student! {
        didSet{
            lblName.text = student.name
           lblEmail.text = student.email
            lblMobile.text = student.mobile
            lblAddress.text = student.address
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
