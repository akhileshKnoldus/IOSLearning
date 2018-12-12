//
//  ViewController.swift
//  SideMenuBar
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var sideBarTableView: UITableView!
    @IBOutlet weak var sideBarView: UIView!
    var isSideViewOpen = false
    
    var arrayData = ["Mobile" , "Laptop" , "Desktop"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        regNib()
        sideBarView.isHidden = true
        sideBarTableView.backgroundColor = UIColor.groupTableViewBackground
        sideBarTableView.isHidden = false
        isSideViewOpen = false
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    
   func  regNib(){
     let nib = UINib(nibName: "DataCell", bundle: nil)
    sideBarTableView.register(nib, forCellReuseIdentifier: "DataCell")
    }

    
    

    @IBAction func tappedMenuBtn(_ sender: Any) {
        
//        if sideBarView.isHidden  {
//            sideBarView.isHidden = !sideBarView.isHidden
//            self.dismiss(animated: true, completion: nil)
//        }
        
        sideBarView.isHidden = false
        sideBarTableView.isHidden = false
        self.view.bringSubview(toFront: sideBarView)
        if  !isSideViewOpen {
            isSideViewOpen = false
            sideBarView.frame = CGRect(x: 0, y: 51, width: 0, height: 476)
            sideBarTableView.frame = CGRect(x: 0, y: 0, width: 0, height: 476)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideBarView.frame = CGRect(x: 0, y: 51, width: 240, height: 476)
            sideBarTableView.frame = CGRect(x: 0, y: 0, width: 240, height: 476)
            UIView.setAnimationDuration(0.3)
            UIView.commitAnimations()
            
        }
        else {
            sideBarView.isHidden = true
            sideBarTableView.isHidden = true
            isSideViewOpen = false
            sideBarView.frame = CGRect(x: 0, y: 51, width: 0, height: 476)
            sideBarTableView.frame = CGRect(x: 0, y: 0, width: 0, height: 476)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideBarView.frame = CGRect(x: 0, y: 51, width: 240, height: 476)
            sideBarTableView.frame = CGRect(x: 0, y: 0, width: 240, height: 476)
            UIView.setAnimationDuration(0.3)
            UIView.commitAnimations()
        }
    }
}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell") as? DataCell
        cell?.lbl.text = arrayData[indexPath.row]
        return cell!
        
    }
}

