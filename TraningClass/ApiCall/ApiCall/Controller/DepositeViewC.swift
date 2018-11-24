//
//  DepositeViewC.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DepositeViewC: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    var activeProject : DepositeModeling?
    var arrCell = [CellDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recheckVM()
    }
    
    private func recheckVM() {
        if self.activeProject == nil {
            self.activeProject = DepositeModel()
        }
        
        self.registerNib()
    }
    private func registerNib() {
        
        let label = UINib(nibName: "LabelCell", bundle: nil)
        self.tblView.register(label, forCellReuseIdentifier: "LabelCell")
        
        
        let dateNib = UINib(nibName: "DateTimeNDepositeCell", bundle: nil)
        self.tblView.register(dateNib, forCellReuseIdentifier: "DateTimeNDepositeCell")
        
        
        let infoNib = UINib(nibName: "TattoInformationCell", bundle: nil)
        self.tblView.register(infoNib, forCellReuseIdentifier: "TattoInformationCell")
        
        let uploadnib = UINib(nibName: "UploadTatto", bundle: nil)
        self.tblView.register(uploadnib, forCellReuseIdentifier: "UploadTatto")
        
        if let dataSource = self.activeProject?.getTattoInformationData(){
            self.arrCell.append(contentsOf: dataSource)
            self.tblView.reloadData()
        }
    }
    
}
extension DepositeViewC :  UITableViewDelegate,UITableViewDataSource{
    
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
        case .LabelCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! LabelCell
            return cell
            
            
        case .DateTimeNDepositeCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DateTimeNDepositeCell", for: indexPath) as! DateTimeNDepositeCell
            return cell
            
        case .TattoInformationCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TattoInformationCell", for: indexPath) as! TattoInformationCell
            return cell
            
        case . UploadTatto?:
            let cell = tableView.dequeueReusableCell(withIdentifier: " UploadTatto", for: indexPath) as!  UploadTatto
            return cell
        default:
            return UITableViewCell()
        }
    }
}
