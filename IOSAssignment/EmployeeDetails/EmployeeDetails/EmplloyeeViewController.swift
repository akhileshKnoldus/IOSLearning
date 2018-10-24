//
//  EmplloyeeViewController.swift
//  EmployeeDetails
//
//  Created by Akhilesh Gupta on 12/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class EmplloyeeViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout , UISearchBarDelegate{
   
    @IBOutlet weak var collectionViewDemo: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    var employeeInfo: [[String: AnyObject]]?
    var filterArray : [[String:AnyObject]]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        filterArray = employeeInfo
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func registerNib(){
        let nib = UINib(nibName: "EmployeeCollectionViewCell", bundle: nil)
        self.collectionViewDemo.register(nib, forCellWithReuseIdentifier: "EmployeeCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filterArray!.count
    }
    
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EmployeeCollectionViewCell", for: indexPath) as? EmployeeCollectionViewCell{
            
            //  cell.btnDetail.addTarget(self, action: #selector(tapDetail(_:)), for: .touchUpInside)
            // cell.btnOutlet.addTarget(self, action:#selector(btnTapped(_:)), for: .touchUpInside)
            
            
            if let arrDataSource = self.filterArray {
                let data = arrDataSource[indexPath.row]
                
                if let name = data["name"] as? String {
                    cell.nameUILabel.text = name
                }
                if let profile = data["profile"] as? String {
                    cell.profileLabel.text = profile
                }
                
                if let image = data["image"] as? UIImage {
                    cell.imageView.image = image
                }
            }
            
            return cell 
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 4.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4.0
    }
    
    //Serach
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //print(employeeInfo)
        guard !(searchBar.text?.isEmpty)! else
        {
            filterArray = employeeInfo
            collectionViewDemo.reloadData()
            return
            
        }
        filterArray = employeeInfo?.filter({ employeeInfo -> Bool in
            let name = employeeInfo["name"] as? String
            let profile = employeeInfo["profile"] as? String
        
          return (name?.lowercased().contains(searchText.lowercased()))! || ( profile?.lowercased().contains(searchText.lowercased()))!
        })
        print(filterArray)
        self.collectionViewDemo.reloadData()
    }

    @IBAction func searchSubmitBtn(_ sender: Any) {
        
    }
    
    
}


