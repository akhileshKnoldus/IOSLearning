//
//  DetailsCell.swift
//  ImageFetchFromApi
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {

    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
