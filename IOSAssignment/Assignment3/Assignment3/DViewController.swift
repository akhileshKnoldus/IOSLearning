//
//  DViewController.swift
//  Assignment3
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var labelState: UILabel!
    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var tableViewData: UITableView!

    
    var nameD: String?
    var filedname = [String]()
    var data = [String]()
    var swap=[String]()
    var swap2=[String]()
    var addfiledname = [String]()
    var adddata = [String]()
    override func viewDidLoad() {
         self.registerDisplayTableVCell()
         self.tableViewData.delegate = self
         self.tableViewData.dataSource = self
         self.tableViewData.reloadData()
        //labelState.text="Personal Information"
         swap = filedname
         swap2 = data
        }
    
    func registerDisplayTableVCell(){
        super.viewDidLoad()
        let nib = UINib(nibName: "DisplayTableVCell", bundle: nil)
         self.tableViewData.register(nib, forCellReuseIdentifier: "displayCell")
    }
    @IBAction func switchedTapped(_ sender: Any) {
        
        if switchState.isOn==true
        {
            
            labelState.text="Personal Information"
            swap2=data
            swap=filedname
            self.tableViewData.reloadData()
            
        }
        else
        {
            labelState.text="Adress"
            swap=addfiledname
            swap2=adddata
            self.tableViewData.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swap.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableViewData.dequeueReusableCell(withIdentifier: "displayCell", for: indexPath) as? DisplayTableVCell {
           
            if(switchState.isOn==true)
            {
               labelState.text="Personal Information"
            }
            else{
                labelState.text="Address"
               }
            
                if let nameStr = swap[indexPath.row] as? String {
                    cell.nameLbl.text = nameStr
                }
                
                if let image = swap2[indexPath.row] as? String {
                    cell.addressLbl.text=image
                }
            
        
            
            
            
           // cell.nameLbl.text = "\()"
           return cell
           
        }
        return UITableViewCell()
}
}
