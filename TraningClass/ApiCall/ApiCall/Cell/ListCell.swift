//
//  ListCell.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var lblDepositeAmount: UILabel!
    @IBOutlet weak var lblTiming: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblNameOfHeading: UILabel!
    //MARK:- IBOutlets
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
