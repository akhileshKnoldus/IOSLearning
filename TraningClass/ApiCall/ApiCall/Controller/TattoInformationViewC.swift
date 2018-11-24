//
//  TattoInformationViewC.swift
//  ApiCall
//
//  Created by Akhilesh Gupta on 20/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class TattoInformationViewC: UIViewController {
    @IBOutlet weak var tblViewList: UITableView!
    
    var activeProject : TattoInformationModeling?
    var arrCell = [CellDetail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recheckVM()
    }
    
    private func recheckVM() {
        if self.activeProject == nil {
            self.activeProject = TattoInformationModel()
        }
        
        self.registerNib()
    }
    private func registerNib() {
        
        
        
        
        let listNib = UINib(nibName: "TattoCell", bundle: nil)
        self.tblViewList.register(listNib, forCellReuseIdentifier: "TattoCell")
        
        let payementNib = UINib(nibName: "PaymentStatusCell", bundle: nil)
        self.tblViewList.register(payementNib, forCellReuseIdentifier: "PaymentStatusCell")
        
        let amountNib = UINib(nibName: "PayementAmountCell", bundle: nil)
        self.tblViewList.register(amountNib, forCellReuseIdentifier: "PayementAmountCell")
        
        let cardInfoNib = UINib(nibName: "CardInformationCell", bundle: nil)
        self.tblViewList.register(cardInfoNib, forCellReuseIdentifier: "CardInformationCell")
        
        
        let consentForm = UINib(nibName: "ConsentFormCell", bundle: nil)
        self.tblViewList.register(consentForm, forCellReuseIdentifier: "ConsentFormCell")
        
        let seperator = UINib(nibName: "SeperatorFullWidhCell", bundle: nil)
        self.tblViewList.register(seperator, forCellReuseIdentifier: "SeperatorFullWidhCell")
        
        if let dataSource = self.activeProject?.getTattoInformationData(){
            self.arrCell.append(contentsOf: dataSource)
            self.tblViewList.reloadData()
        }
    }
   
}
extension TattoInformationViewC :  UITableViewDelegate,UITableViewDataSource{
    
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
   
        case .TattoCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TattoCell", for: indexPath) as! TattoCell
            return cell
            
            
        case .PaymentStatusCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PaymentStatusCell", for: indexPath) as! PaymentStatusCell
            return cell
            
        case .PayementAmountCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PayementAmountCell", for: indexPath) as! PayementAmountCell
            return cell
            
        case .CardInformationCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardInformationCell", for: indexPath) as! CardInformationCell
            return cell
            
        case .SeperatorFullWidhCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SeperatorFullWidhCell", for: indexPath) as! SeperatorFullWidhCell
            return cell
            
        case .ConsentFormCell?:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ConsentFormCell", for: indexPath) as! ConsentFormCell
            return cell
            
            
        default:
            return UITableViewCell()
        }
    }
}
