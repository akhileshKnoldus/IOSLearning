//
//  ViewController.swift
//  ImageFetchFromApi
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import SwiftyJSON
import AlamofireImage
import AlamofireObjectMapper
import ObjectMapper


class ViewController: UIViewController {
    
    var arrData = [Songs]()

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        regiNib()
       jsonParsing()
    }

    func regiNib(){
        let nib = UINib(nibName: "DetailsCell", bundle: nil)
        tblView.register(nib, forCellReuseIdentifier: "DetailsCell")
    }
    func jsonParsing(){
        let url = URL(string: "https://itunes.apple.com/search?media=music&term=bollywood")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else { return }
            do{
                let json = try JSON(data:data)
                let results = json["results"]
                for arr in results.arrayValue{
                    self.arrData.append(Songs(json: arr))
                }
                DispatchQueue.main.async {
                    self.tblView.reloadData()
                }
            }catch{
                print(error.localizedDescription)
            }
            }.resume()
    }
}


extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsCell", for: indexPath) as? DetailsCell
        cell?.artistName.text = arrData[indexPath.row].artistName
        cell?.name.text = arrData[indexPath.row].trackCensoredName
//         cell?.imgView.kf.setImage(with: URL(string: arrData[indexPath.row].artworkUrl100))
        let imgUrl = URL(string: arrData[indexPath.row].artworkUrl100)
        cell?.imgView.af_setImage(withURL: imgUrl!)
     return cell!
    
    }
}

