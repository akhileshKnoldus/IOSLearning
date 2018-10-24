//
//  ViewController.swift
//  SegementedControlSwitch
//
//  Created by Akhilesh Gupta on 21/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit
class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var segementControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView1: UITableView!
    let cars = ["HONDA", "SWIFT", "SUZUKI" , "ALTO"]
    let fruits = ["Apple" , "Banana" , "Fruits1" , "Fruits2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView1.delegate = self
        tableView1.dataSource = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segementControl.selectedSegmentIndex{
        case 0:
            return cars.count
        case 1:
            return fruits.count
        default:
         break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch segementControl.selectedSegmentIndex {
        case 0:
            cell.textLabel?.text = cars[indexPath.row]
        case 1:
            cell.textLabel?.text = fruits[indexPath.row]
        default:
            break
        }
        return cell
    }
    
    @IBAction func segementChangeAction(_ sender: UISegmentedControl) {
        self.tableView1.reloadData()
    }
}

