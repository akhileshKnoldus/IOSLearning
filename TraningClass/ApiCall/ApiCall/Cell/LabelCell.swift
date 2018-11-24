//
//  LabelCell.swift
//  JoggleApp
//
//  Created by Admin on 14/11/18.
//  Copyright © 2018 Abichal. All rights reserved.
//

import UIKit

class LabelCell: UITableViewCell {

    @IBOutlet weak var lblCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func configureCell(cellDetail: CellDetail) {
        self.lblCell.text = cellDetail.title
    }
}
