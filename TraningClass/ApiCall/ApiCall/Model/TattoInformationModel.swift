//
//  TattoInformationModel.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation

protocol TattoInformationModeling {
    func getTattoInformationData() -> [CellDetail]
}


class TattoInformationModel: TattoInformationModeling {
    
    func getTattoInformationData() -> [CellDetail] {
        
        var array = [CellDetail]()
        
        //  seperator Cell
        let seperator1 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator1)
        
        //  Tatto Cell
        let List1 = CellDetail (cellType: .TattoCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 192)
        array.append(List1)
      
        
        //  seperator Cell
        let seperator2 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator2)
        
        
        //  Heading List 3 Cell
        let payementStatus = CellDetail (cellType: .PaymentStatusCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 60)
        array.append(payementStatus)
        
        //  seperator Cell
        let seperator3 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator3)
        
        //  payemet Cell
        let List4 = CellDetail (cellType: .PayementAmountCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 80)
        array.append(List4)
        
        //  seperator Cell
        let seperator4 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator1)
        
        //  cardInfo  Cell
        let cardInfo = CellDetail (cellType: .CardInformationCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 70)
        array.append(cardInfo)
        
        
        
            //  seperator Cell
        let seperator5 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator5)
        
        //  seperator Cell
        let consent = CellDetail (cellType: .ConsentFormCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 75)
        array.append(consent)
        
        //  seperator Cell
        let seperator6 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator6)
        
        
        return array
    }
}
