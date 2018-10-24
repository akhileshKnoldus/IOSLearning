//
//  ViewController.swift
//  test
//
//  Created by Akhilesh Gupta on 11/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
   
   // @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
   
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell")!
        
       //let text=indexPath.row
        cell.myLabel.text = "\(indexPath.row)"
        return cell
    }

}

