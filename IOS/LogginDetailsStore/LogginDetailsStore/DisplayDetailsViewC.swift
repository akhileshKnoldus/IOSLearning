//
//  DisplayDetailsViewC.swift
//  LogginDetailsStore
//
//  Created by Akhilesh Gupta on 24/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class DisplayDetailsViewC: UIViewController ,  UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var tblView: UITableView!
    var arrDetail = [[String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNibs()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Variables
   
    
    //MARK:- View Life Cycle Methods
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Private Methods
    private func registerNibs() {
        self.tblView.register(UINib.init(nibName: "DetailTableCell", bundle: nil), forCellReuseIdentifier: "DetailTableCell")
    }
    
    
    public func passValue(data: [[String: Any]]) {
        print("Value is Recived in Display Class")
        print(data)
        arrDetail = data
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tblView.dequeueReusableCell(withIdentifier: "DetailTableCell", for: indexPath) as! DetailTableCell
        let object = self.arrDetail[indexPath.row]
//          var name = object.keys(kName)
//          var  email = object.key(kEmail)
//          var  address = object.key(kAddress)
         print("Inside the TableView in Display")
        print(object.index(forKey: kName)!)
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
      
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
