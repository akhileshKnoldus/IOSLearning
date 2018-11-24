//
//  TestDisplayViewController.swift
//  TableCollSample
//
//  Created by Akhilesh Gupta on 10/10/18.
//  Copyright © 2018 AppVenturez. All rights reserved.
//

import UIKit

class TestDisplayViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNib()
        //self.tableView.delegate = self
       // self.tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    func registerNib(){
        let nib = UINib(nibName: "TestTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "testCell")
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
}
