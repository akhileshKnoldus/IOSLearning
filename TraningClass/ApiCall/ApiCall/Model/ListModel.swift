//
//  ListModel.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation
protocol ListModeling {
    func getListData() -> [CellDetail]
}


class ListModel: ListModeling {
    
    func getListData() -> [CellDetail] {
        
        var array = [CellDetail]()
        
        //  Heading List 1 Cell
        let List1 = CellDetail (cellType: .ListCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 150)
        array.append(List1)
        
        //  seperator Cell
        let seperator1 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator1)
      
        //  Heading List 2 Cell
        let List2 = CellDetail (cellType: .ListCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 150)
        array.append(List2)
        
        //  seperator Cell
        let seperator2 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator2)
        
        //  Heading List 3 Cell
        let List3 = CellDetail (cellType: .ListCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 150)
        array.append(List3)
        
        //  seperator Cell
        let seperator3 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator3)
        
        //  Heading List 4 Cell
        let List4 = CellDetail (cellType: .ListCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 150)
        array.append(List4)
        
        //  seperator Cell
        let seperator4 = CellDetail (cellType: .SeperatorFullWidhCell, title: "", subTitle: "", placeHolder: "", info: nil, height: 15)
        array.append(seperator1)
        
        
        
        return array
    }
}
