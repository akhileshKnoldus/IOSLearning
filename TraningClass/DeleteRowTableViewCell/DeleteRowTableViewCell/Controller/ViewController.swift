//
//  ViewController.swift
//  DeleteRowTableViewCell
//
//  Created by Akhilesh Gupta on 24/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var tblView: UITableView!
    var name = ["A" ," B" , "C" , "D" , "E" , "F"]
    var price = ["1" , "2" , "3" , "4" , "5" , "6"]
    //var imageOfArray = [#imageLiteral(resourceName: "5") , #imageLiteral(resourceName: "3") , #imageLiteral(resourceName: "6") , #imageLiteral(resourceName: "1") , #imageLiteral(resourceName: "5") , #imageLiteral(resourceName: "4")] as! UIImage
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func registerNib(){
        let nib = UINib(nibName: "ListCell", bundle: nil)
       tblView.register(nib, forCellReuseIdentifier: "ListCell")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
       
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as? ListCell
       // cell?.imgView = imageOfArray[indexPath.row]
        cell?.lblName.text = name[indexPath.row]
        cell?.lblPrice.text = price[indexPath.row]
        
        return cell!
       
    }
    
   //Delete a cell
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            name.remove(at: indexPath.row)
            price.remove(at: indexPath.row)
            tblView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let detailsVC = mainSB.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
        {
            detailsVC.name =  name[indexPath.row]
            detailsVC.price = price[indexPath.row]
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }

}

