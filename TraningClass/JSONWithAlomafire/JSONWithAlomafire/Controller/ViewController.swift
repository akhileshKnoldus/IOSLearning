//
//  ViewController.swift
//  JSONWithAlomafire
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import ObjectMapper
import  Alamofire
import AlamofireImage
import AlamofireObjectMapper


struct jsonData : Decodable {
    let name : String
    let capital : String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    var arrayData = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
       // getJSONData()
        JSONDataWithAlmofire()
    }
    
    func registerNib(){
        let nib = UINib(nibName: "DisplayCellCell", bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: "DisplayCellCell")
    }
    
//    func getJSONData(){
//        let url = URL(string: "https://restcountries.eu/rest/v2/all")
//        URLSession.shared.dataTask(with: url!) {(data , response , error)
//            in
//            do {
//                if error == nil {
//                    self.arrayData = try  JSONDecoder().decode([jsonData].self, from: data!)
//                    print(self.arrayData[0])
//                    for dataArray in self.arrayData {
//                        print(dataArray.name , ":" , dataArray.capital)
//
//                        //Resolve table view Problem
//
//                        DispatchQueue.main.async {
//                            self.tblView.reloadData()
//                        }
//                    }
//                }
//            }catch{
//                print("Error in get JSON Data")
//            }
//            }.resume()
//    }
    
    
    func JSONDataWithAlmofire(){
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        Alamofire.request(url!).responseArray{(response : DataResponse<[Country]>)
            in
            let responseArray = response.result.value
            self.arrayData = responseArray!
            
            DispatchQueue.main.async{
            self.tblView.reloadData()
            }
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DisplayCellCell") as? DisplayCellCell
        cell?.nameLbl.text = "Name : \(String(describing: arrayData[indexPath.row].name!))"
        cell?.capitalLbl.text = "Capital : \(arrayData[indexPath.row].capital!)"
        return cell!
    }
}

