//
//  TableViewController.swift
//  TableViewCellAction
//
//  Created by Akhilesh Gupta on 21/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

var animals = ["avatar" , "envelope" , "house"]
var animalDesc = ["DOG BARK" , "CAT IS PET ANIMAL" , "KING ANIMAL IN FOREST"]

class TableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
  
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //MARK:- private Method
    func moveToViewController(index: Int) {
        
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc = mainSB.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            vc.indexSelected = index
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return (animals.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       // let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
         cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.moveToViewController(index: indexPath.row)
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
