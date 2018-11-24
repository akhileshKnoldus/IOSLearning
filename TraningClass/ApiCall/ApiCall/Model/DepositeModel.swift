//
//  DepositeModel.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation

protocol DepositeModeling {
    func getTattoInformationData() -> [CellDetail]
}


class DepositeModel: DepositeModeling {
    
    func getTattoInformationData() -> [CellDetail] {
        
        var array = [CellDetail]()
        
        
        //   label Cell
        let lbl = CellDetail (cellType: .LabelCell, title: "Date & Time", subTitle: "", placeHolder: "", info: nil, height: 35)
        array.append(lbl)
        
        
        // Date N Time  Cell
        let dateNTime = CellDetail (cellType: .DateTimeNDepositeCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 65)
        array.append(dateNTime)
        
        //   label Cell
        let lbl3 = CellDetail (cellType: .LabelCell, title: "Tatto Information", subTitle: "", placeHolder: "", info: nil, height: 35)
        array.append(lbl3)
        
        //  TattoNib label Cell
        let TattoNib = CellDetail (cellType: .TattoInformationCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 100)
        array.append(TattoNib)
        
        //   label Cell
        let lbl4 = CellDetail (cellType: .LabelCell, title: "Upload Tatto(Optional)", subTitle: "", placeHolder: "", info: nil, height: 35)
        array.append(lbl4)
        
        //   label Cell
        let uploadTatto = CellDetail (cellType: .UploadTatto, title: "", subTitle: "", placeHolder: "", info: nil, height: 90)
        array.append(uploadTatto)
        

        //   label Cell
        let lbl2 = CellDetail (cellType: .LabelCell, title: "Deposite Information", subTitle: "", placeHolder: "", info: nil, height: 35)
        array.append(lbl2)
        
       return array
    }
}
