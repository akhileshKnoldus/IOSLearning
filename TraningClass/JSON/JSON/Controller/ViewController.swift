//  ViewController.swift
//  JSON
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.

import UIKit

struct jsonData : Decodable {
    let name : String
    let capital : String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var arrayData = [jsonData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        getJSONData()
    }
    
    func registerNib(){
        let nib = UINib(nibName: "DisplayCellCell", bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: "DisplayCellCell")
     }
    
    func getJSONData(){
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) {(data , response , error)
            in
            do {
                if error == nil {
                    self.arrayData = try  JSONDecoder().decode([jsonData].self, from: data!)
                    for dataArray in self.arrayData {
                        print(dataArray.name , ":" , dataArray.capital)
                        
                        //Resolve table view Problem
                        
                        DispatchQueue.main.async {
                            self.tblView.reloadData()
                        }
                    }
                }
            }catch{
                print("Error in get JSON Data")
            }
            }.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DisplayCellCell") as? DisplayCellCell
        cell?.nameLbl.text = "Name : \(arrayData[indexPath.row].name)"
        cell?.capitalLbl.text = "Capital : \(arrayData[indexPath.row].capital)"
        return cell!
    }
}

