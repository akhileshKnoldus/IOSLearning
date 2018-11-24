//
//  BaseTabelViewCell.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class BaseTabelViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
struct CellDetail {
    var cellType: CellType!
    var title: String
    var subTitle: String
    var placeHolder: String!
    var height: CGFloat!
    var info: [String: AnyObject]?
    
    init(cellType: CellType, title: String = "", subTitle: String = "", placeHolder: String = "",info:[String: AnyObject]? = nil, height: CGFloat = UITableViewAutomaticDimension) {
        self.cellType = cellType
        self.title = title
        self.subTitle = subTitle
        self.placeHolder = placeHolder
        self.height = height
        self.info = info
    }
}

enum CellType {
    
    case ListCell
    case PaymentStatusCell
    case CardInformationCell
    case PayementAmountCell
    case TattoCell
    case ConsentFormCell
    case SeperatorFullWidhCell
    case LabelCell
    case DateTimeNDepositeCell
    case UploadTatto
    case TattoInformationCell
    
    
    
}

