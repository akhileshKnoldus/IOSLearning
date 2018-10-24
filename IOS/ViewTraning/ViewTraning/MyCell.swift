//
//  MyCell.swift
//  ViewTraning
//
//  Created by Akhilesh Gupta on 19/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
