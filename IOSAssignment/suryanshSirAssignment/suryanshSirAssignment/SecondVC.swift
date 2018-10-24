//
//  SecondVC.swift
//  suryanshSirAssignment
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class SecondVC:UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {
    
    var image = ["1" ,"2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "10"]
    var informationArray = [String:AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        //cell?.displayLabel.text = image[indexPath.row]
        return cell!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    
    
    func moveToSecondVC(){
        
        let mainSb = UIStoryboard(name: "Main", bundle:nil)
        if let addressVC = mainSb.instantiateViewController(withIdentifier: "AddressVC") as? AddressVC {
            self.navigationController?.pushViewController(addressVC, animated: true)
        }
    }
    
    
    
}

