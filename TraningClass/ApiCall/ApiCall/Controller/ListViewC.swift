//
//  ListViewC.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ListViewC: UIViewController {

    
    @IBOutlet weak var tblViewList: UITableView!
    
    var activeProject : ListModeling?
    var arrCell = [CellDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recheckVM()
    }
    
    private func recheckVM() {
        if self.activeProject == nil {
            self.activeProject = ListModel()
        }
        
        self.registerNib()
    }
    private func registerNib() {
        
        let listNib = UINib(nibName: "ListCell", bundle: nil)
        self.tblViewList.register(listNib, forCellReuseIdentifier: "ListCell")
        
        let seperator = UINib(nibName: "SeperatorFullWidhCell", bundle: nil)
        self.tblViewList.register(seperator, forCellReuseIdentifier: "SeperatorFullWidhCell")
     
        if let dataSource = self.activeProject?.getListData(){
            self.arrCell.append(contentsOf: dataSource)
            self.tblViewList.reloadData()
        }
    }
    
    
    
    
}
extension ListViewC :  UITableViewDelegate,UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.arrCell[indexPath.row].height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellDetail = self.arrCell[indexPath.row]
        return self.getCell(tableView: tableView, indexPath: indexPath, cellDetail: cellDetail)
    }
    
    func getCell(tableView: UITableView, indexPath: IndexPath, cellDetail: CellDetail) -> UITableViewCell {
        
        switch cellDetail.cellType {
            
        case .ListCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListCell
            return cell
            
            
        case .SeperatorFullWidhCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SeperatorFullWidhCell", for: indexPath) as! SeperatorFullWidhCell
            return cell
            
            
        default:
            return UITableViewCell()
        }
    }
}

