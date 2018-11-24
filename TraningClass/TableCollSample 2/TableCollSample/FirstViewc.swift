//
//  FirstViewc.swift
//  TableCollSample
//
//  Created by Ashish Chauhan on 09/10/18.
//  Co/Users/akhilesh/Documents/TraningClass/TableCollSample/TableCollSamplepyright © 2018 AppVenturez. All rights reserved.
//

import UIKit

class FirstViewc: UIViewController {
    
    
    
    @IBOutlet weak var tblViewData: UITableView!
    var arrayTrainees = [[String: AnyObject]]()
    var arrayName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "MyCustomCell", bundle: nil)
        self.tblViewData.register(nib, forCellReuseIdentifier: "mycell")
        
      

        let firstDict = ["name": "Akhilesh" as AnyObject, "image": #imageLiteral(resourceName: "images1") as AnyObject]
        let Dict2 = ["name": "Abhijal" as AnyObject, "image": #imageLiteral(resourceName: "images2") as AnyObject]
        let Dict3 = ["name": "Sakhi" as AnyObject, "image": #imageLiteral(resourceName: "images3") as AnyObject]
        let Dict4 = ["name": "Ashish" as AnyObject, "image": #imageLiteral(resourceName: "download") as AnyObject]
        
        arrayTrainees.append(contentsOf: [firstDict, Dict2, Dict3, Dict4])
    
        self.tblViewData.delegate = self
        self.tblViewData.dataSource = self
        self.tblViewData.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    
    @objc func tapDetail(_ sender: UIButton) {
        print("detail clicked")
    }

}

extension FirstViewc: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrayTrainees.count
        
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
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as? MyCustomCell {
            
            cell.btnDetail.addTarget(self, action: #selector(tapDetail(_:)), for: .touchUpInside)
            
            let dict = self.arrayTrainees[indexPath.row]
            
            
            if let nameStr = dict["name"] as? String {
                cell.lblName.text = nameStr
            }
            
            if let image = dict["image"] as? UIImage {
                cell.imgView.image = image
            }
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
        /*
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         cell.textLabel?.text = "\(indexPath.row)"
         cell.detailTextLabel?.text = "this is detail"
         return cell*/
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("index row: \(indexPath.row)")
        print("index section: \(indexPath.section)")
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = sb.instantiateViewController(withIdentifier: "SecondViewC") as? SecondViewC {
            let dict = self.arrayTrainees[indexPath.row]
            secondVC.myDict = dict
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
        
    }
    
    
}
