//
//  FirstViewController.swift
//  EmployeeDetails
//
//  Created by Akhilesh Gupta on 11/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var employeeDetailsArray = [[String: AnyObject]]()
    var modifiedEmployeeDetailsArray = [[String: AnyObject]]()
    var arrayName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        employeeArray()
        tableView.reloadData()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        //modifiedEmployeeDetailsArray = employeeDetailsArray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func employeeArray(){
        
        //Java
        let emp1 = ["image":UIImage(named: "1") as AnyObject , "name":"Akhilesh" as AnyObject, "profile":"JAVA" as AnyObject , "isSelected": 0 as AnyObject]
        let emp2 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"Alok"  as AnyObject, "profile":"JAVA" as AnyObject, "isSelected": 0 as AnyObject]
        let emp3 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"C"  as AnyObject, "profile":"JAVA" as AnyObject, "isSelected": 0 as AnyObject]
        let emp4 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"D"  as AnyObject, "profile":"JAVA" as AnyObject, "isSelected": 0 as AnyObject]
        let emp5 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"E"  as AnyObject, "profile":"JAVA" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        //IOS
        
        let emp6 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"F"  as AnyObject, "profile":"IOS" as AnyObject, "isSelected": 0 as AnyObject]
        let emp7 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"G"  as AnyObject, "profile":"IOS" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp8 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"H"  as AnyObject, "profile":"IOS" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp9 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"I"  as AnyObject, "profile":"IOS" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp10 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"J"  as AnyObject, "profile":"IOS" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        //UI
        let emp11 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"K"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp12 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"L"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp13 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"M"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp14 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"N"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp15 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"O"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp16 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"P"  as AnyObject, "profile":"UI" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        
        //.Net
        let emp17 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"P"  as AnyObject, "profile":"Net" as AnyObject, "isSelected": 0 as AnyObject]
        
        let emp18 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"Q"  as AnyObject, "profile":"Net" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        let emp19 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"R"  as AnyObject, "profile":"Net" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        let emp20 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"S"  as AnyObject, "profile":"Net" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        let emp21 =  ["image": UIImage(named: "2") as AnyObject ,  "name":"T"  as AnyObject, "profile":"Net" as AnyObject, "isSelected": 0 as AnyObject]
        
        
        //        employeeDetailsArray.append(contentsOf: [emp1 , emp2 , epm3 , epm4 , epm5 , epm6 , epm7 , epm8 , epm9 , epm10 , epm11 , epm12 , epm13 , epm14 , epm15 , epm16 , epm17 , epm18 , epm19 , epm20 , epm21])
        
        employeeDetailsArray.append(contentsOf: [emp1 , emp2 , emp3 , emp4 , emp5 , emp6 , emp7 , emp8 , emp8 , emp9 , emp10 , emp11 , emp12 , emp13 , emp14 , emp15 , emp16 , emp17 ,emp18 , emp19 , emp20 , emp21 ])
        
    }
    
    
    func registerNib(){
        let nib = UINib(nibName: "EmployeeTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "empCell")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.employeeDetailsArray.count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let size = UIScreen.main.bounds.size
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: 30))
        let myLabel = UILabel(frame: CGRect(x: 10, y: 0, width: size.width, height: 30))
        myLabel.text = "This is \(section) section"
        headerView.addSubview(myLabel)
        myLabel.textColor = UIColor.black
        headerView.backgroundColor = UIColor.orange
        return headerView
        
    }
    
    @objc func tapDetail(_ sender: UIButton) {
       // print("detail clicked")
        
        if sender.isSelected{
            //print(sender.isSelected , "Inside True Section")
            sender.isSelected = false
        }
        else {
            sender.isSelected = true
        }
        
        
        let selectedIndex = IndexPath(row: sender.tag, section: 0)
        
        //print("selectedIndex \(selectedIndex)"
        
        
        tableView.selectRow(at: selectedIndex, animated: true, scrollPosition: .none)
        
        let selectedCell = tableView.cellForRow(at: selectedIndex) as? EmployeeTableViewCell
       // print("selectedCell \(selectedCell)")
        let dict = self.employeeDetailsArray[sender.tag]
        //print("sender.tage" , sender.tag)
       // print("dict \(dict)")
        
        if(modifiedEmployeeDetailsArray.count==0){
            modifiedEmployeeDetailsArray.append(dict)
            

        } else
        {
            var index = 0
            for di in modifiedEmployeeDetailsArray {
                
                if di["name"] as? String == dict["name"] as? String
                {
                    modifiedEmployeeDetailsArray.remove(at: index)
                    return
                }
                index = index + 1
            }
            modifiedEmployeeDetailsArray.append(dict)
        }
       // print(employeeDetailsArray.count)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "empCell", for: indexPath) as? EmployeeTableViewCell {
            let emp = self.employeeDetailsArray[indexPath.row]
            cell.btnOutlet.tag = indexPath.row
            cell.btnOutlet.addTarget(self, action: #selector(tapDetail(_:)), for: .touchUpInside)
            
            
            
            
            if let nameStr = emp["name"] as? String {
                cell.nameLabel.text = nameStr
                print(nameStr)
            }
            
            if let img = emp["image"] as? UIImage{
                
                cell.imgView.updateConstraintsIfNeeded()
                cell.imgView.layer.cornerRadius = cell.imgView.frame.size.width/2
            
                cell.imgView .clipsToBounds = true
                cell.imgView.image = img
            }
            
            if let profile = emp["profile"] as? String{
                cell.profileLabel.text = profile
                print(profile)
            }
            
            return cell
        }
        else {
            return UITableViewCell()
        }
        
        
    }
    
    func moveToEmployeeViewController(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if  let employeeVC = mainSB.instantiateViewController(withIdentifier: "EmplloyeeViewController") as? EmplloyeeViewController {
            employeeVC.employeeInfo = modifiedEmployeeDetailsArray
            //print(employeeVC.employeeInfo)
            self.navigationController?.pushViewController(employeeVC, animated: true)
        }
    }
 
    @IBAction func doneButtonTapped(_ sender: Any) {
        moveToEmployeeViewController()
    }
    
}
