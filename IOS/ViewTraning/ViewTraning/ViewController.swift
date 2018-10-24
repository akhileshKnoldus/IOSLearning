//
//  ViewController.swift
//  ViewTraning
//
//  Created by Akhilesh Gupta on 19/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "MyCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "mycell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // let cell=tableView.dequeueReusableCell(withIdentifier: "cell") as UITableView
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        //cell.textLabel?.text = " Dyanmic Table \(indexPath.row)"
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! MyCell
        cell.myLabel.text = "index row : \(indexPath.row)"
        return cell
    }

}

