//
//  DisplayCellCell.swift
//  JSONWithAlomafire
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayCellCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    
    @IBOutlet weak var capitalLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
