//
//  ViewController.swift
//  UIRefreshControl

//  Created by Akhilesh Gupta on 19/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var refreshtable : UITableView!
    
    //MARK: - Properties
    var refreshControl   = UIRefreshControl()
    let data: [String] = ["Apple", "HP", "Accer"]
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Private Method
    
    private func setup(){
        // Refresh control add in tableview.
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        self.refreshtable.addSubview(refreshControl)
        
        self.refreshtable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @objc func refresh(_ sender: Any) {
        // Call webservice here after reload tableview.
        
        refreshControl.endRefreshing()
    }
    

}

//MARK: - Delegate
extension ViewController : UITableViewDelegate ,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        cell.textLabel?.text = self.data[indexPath.row]
        return cell
    }
    
    
}
