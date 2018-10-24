//
//  FirstViewController.swift
//  TableCell
//
//  Created by Akhilesh Gupta on 09/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    let arrayOfData = ["AKHILESH" , "ABHIJAL" , "ALOK" , "JNARDON"]

    @IBOutlet weak var tabelViewCell: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelViewCell.delegate = self
        self.tabelViewCell.dataSource = self

        // Do any additional setup after loading the view.
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let size = UIScreen.main.bounds.size
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: 30))
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: 30))
        myLabel.text = "This is () section "
        headerView.addSubview(myLabel)
        myLabel.textColor = UIColor.black
        headerView.backgroundColor = UIColor.orange
        return headerView
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelViewCell.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = arrayOfData[indexPath.row]
        return  cell
    }
}

