//
//  DisplayTableVCell.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayTableVCell: UITableViewCell {

    
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
