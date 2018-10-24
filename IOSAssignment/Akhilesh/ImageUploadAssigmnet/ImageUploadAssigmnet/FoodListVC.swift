//
//  FoodListVC.swift
//  ImageUploadAssigmnet
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
let vegitableName = "name"
let vegitableImage = "image"

class FoodListVC: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionTabelViewdata: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var foodList = [[String : AnyObject]]()
    var searchArray = [[String: AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        searchBar.showsCancelButton = true
        registerCustomCollectionViewCell()
        loadFoodList()
        collectionTabelViewdata.reloadData()
    }
    
    func loadFoodList(){
        let  food1 = [vegitableName : "Capsicum" as? AnyObject , vegitableImage:#imageLiteral(resourceName: "capsicum") as? AnyObject]
        let  food2 = [vegitableName : "Beetroot" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "beetroot") as? AnyObject]
        let  food3 = [vegitableName : "BitterGourd" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "BitterGourd") as? AnyObject]
        let  food4 = [vegitableName : "Black Pepper" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "blackPepper") as? AnyObject]
        let  food5 = [vegitableName : "Bottle Gourd" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "Bottle-Gourd-Vegetable") as? AnyObject]
        let  food6 = [vegitableName : "Capsicum" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "capsicum") as? AnyObject]
        let  food7 = [vegitableName : "carrots" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "carrots-vegetables") as? AnyObject]
        let  food8 = [vegitableName : "cauliflower" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "cauliflower") as? AnyObject]
        let  food9 = [vegitableName : "Celery" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "celery") as? AnyObject]
        let  food10 = [vegitableName : "Corinder Leaf" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "Corinder-leaf") as? AnyObject]
        let  food11 = [vegitableName : "Corn" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "corn") as? AnyObject]
        let  food12 = [vegitableName : "Cucumbers" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "cucumbers") as? AnyObject]
        let  food13 = [vegitableName : "EggsPlant" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "Eggplant") as? AnyObject]
        let  food14 = [vegitableName : "Garlic" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "Garlic") as? AnyObject]
        let  food15 = [vegitableName : "Gingger" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "ginger") as? AnyObject]
        let  food16 = [vegitableName : "Green Cabbage" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "green-cabbage") as? AnyObject]
        let  food17 = [vegitableName : "JackFruits" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "Jackfruit") as? AnyObject]
        let  food18 = [vegitableName : "Winter Melon" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "winterMelon") as? AnyObject]
        let  food19 = [vegitableName : "Beetroot" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "beetroot") as? AnyObject]
        let  food20 = [vegitableName : "Beetroot" as? AnyObject , vegitableImage: #imageLiteral(resourceName: "beetroot") as? AnyObject]
        
        
//        foodList.append(contentsOf: [food1 , food2, food3, food4, food5, food6, food7, food8, food9, food10, food11, food12, food13, food14, food15, food16, food17, food18, food19, food20])

//        foodList.append(contentsOf: [food1 , food2 , food3 , food4, food5, food6, food7, food8, food9, food10, food11, food12, food13, food14, food15, food16, food17, food18, food19, food20])
        foodList.append(food1 as [String : AnyObject])
        foodList.append(food2 as [String : AnyObject])
        foodList.append(food3 as [String : AnyObject])
        foodList.append(food4 as [String : AnyObject])
        foodList.append(food5 as [String : AnyObject])
        foodList.append(food6 as [String : AnyObject])
        foodList.append(food7 as [String : AnyObject])
        foodList.append(food8 as [String : AnyObject])
        foodList.append(food9 as [String : AnyObject])
        foodList.append(food10 as [String : AnyObject])
        searchArray = foodList
        collectionTabelViewdata.reloadData()
        
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func registerCustomCollectionViewCell(){
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        self.collectionTabelViewdata.register(nib, forCellWithReuseIdentifier: "cell")
        
    }
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return foodList.count
        return searchArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell {
            
            //let vegitableList = self.foodList[indexPath.row]
            let vegitableList = self.searchArray[indexPath.row]
            
            if let name = vegitableList[vegitableName] as? String {
                    cell.foodNameUILabel.text = name
            }
                if let img = vegitableList[vegitableImage] as? UIImage {
                    cell.imageView.image = img
                }
            return cell
        }
        else{
        return UICollectionViewCell()
    }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("index row: \(indexPath.row)")
        print("index section: \(indexPath.section)")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let secondVC = sb.instantiateViewController(withIdentifier: "DisplayFooodVC") as? DisplayFooodVC {
            //let dict = self.foodList[indexPath.row]
            let dict = self.searchArray[indexPath.row]
            secondVC.myDict = dict
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }

}



extension FoodListVC : UISearchBarDelegate{
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        print("searchBarShouldBeginEditing is start")
        return true
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("searchBarTextDidBeginEditing")
     }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        print("Search Text is \(searchText)")
        searchArray.removeAll()
        let searchString = searchText.lowercased()
        
        if searchString.isEmpty{
            searchArray.append(contentsOf: foodList)
            collectionTabelViewdata.reloadData()
            return
        }
        
        let array = foodList.filter{(vegitableList) -> Bool in
            if let nameOfVegitable = vegitableList[vegitableName]?.lowercased {
                if nameOfVegitable.contains(searchString){
                    return true
                }
            }
            return false
        }
        searchArray.append(contentsOf: array)
        collectionTabelViewdata.reloadData()
    }

    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("shouldChangeTextIn")
        return true
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("searchBarCancelButtonClicked")
        searchBar.resignFirstResponder()
    }
    
}
