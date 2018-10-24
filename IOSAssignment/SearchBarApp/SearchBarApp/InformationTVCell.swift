//
//  InformationTVCell.swift
//  SearchBarApp
//
//  Created by Akhilesh Gupta on 15/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit



protocol MyCutomDelegate: class {
    
    func detailButtonClicked(cell: UITableViewCell)
    func tapOnImage()
}


class InformationTVCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var fName: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var lName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
