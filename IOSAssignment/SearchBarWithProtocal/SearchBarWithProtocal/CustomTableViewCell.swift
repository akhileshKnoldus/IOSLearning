//
//  CustomTableViewCell.swift
//  SearchBarWithProtocal
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
protocol MyCutomDelegate: class {
    
    func detailButtonClicked(cell: UITableViewCell)
    
}

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var detailsBtn: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
     weak var customCellDelegate: MyCutomDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func tappedDetailsBtn(_ sender: Any) {
        print("detail button clicked")
        if let myDelelegate = self.customCellDelegate {
            myDelelegate.detailButtonClicked(cell: self)
        }
    }
}
