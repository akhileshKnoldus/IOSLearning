//
//  PaymentStatusCell.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class PaymentStatusCell: UITableViewCell {

    @IBOutlet weak var lblPayementStatus: UILabel!
    
    @IBOutlet weak var btnPayementStatus: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tappedPayementStatus(_ sender: Any) {
    }
}
