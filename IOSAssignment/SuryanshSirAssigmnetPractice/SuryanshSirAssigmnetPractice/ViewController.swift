//
//  ViewController.swift
//  tyrfdtrdgh
//
//  Created by Akhilesh Gupta on 17/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var images = [UIImage]()
    var personal = ["","","","",""]
    var index: Int?
    var collection: UICollectionView!
    var  table: UITableView!
    var count = 0
    @IBOutlet weak var EditBtn: UIButton!
    var images1 = [UIImage]()
    override func viewDidLoad() {
        
//        images = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "16e25906aa0aaa6150232d8918d021f1")] as! [UIImage]
//        //segmentValueChanged(segmentControl.selectedSegmentIndex)
//        images1 = images
        //EditBtn.setTitle("Edit", for: .normal)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func segment(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0{
            count += 1
            let layout = UICollectionViewFlowLayout.init()
            
            collection = UICollectionView(frame: CGRect(x: 0, y: 144, width: 375, height: 523), collectionViewLayout: layout)
            collection.backgroundColor = UIColor.white
            collection.dataSource = self as! UICollectionViewDataSource
            collection.delegate = self as? UICollectionViewDelegate
            let nib = UINib(nibName: "CollectionCell", bundle: nil)
            collection.register(nib, forCellWithReuseIdentifier: "CollectionCell")
            
            self.view.addSubview(collection)
            
        }else if segmentControl.selectedSegmentIndex == 1{
            count += 1
            table = UITableView(frame: CGRect(x: 0, y: 144, width: 375, height: 523), style: UITableViewStyle.plain)
            table.backgroundColor = UIColor.white
            table.dataSource = self as! UITableViewDataSource
            table.delegate = self as! UITableViewDelegate
            let nib = UINib(nibName: "TableCell", bundle: nil)
            table.register(nib, forCellReuseIdentifier: "TableCell")
            self.view.addSubview(table)
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func deleteButtonTapped(sender: UIButton){
        images1.remove(at: sender.tag)
        if count == 0 || count == 1{
            collection.reloadData()
        }else{
            collection.reloadData()
            table.reloadData()
        }
        
        EditBtn.setTitle("Done", for: .normal)
    }
    
//    @objc func ImageTapped(sender: UIButton){
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        if let addressViewC = sb.instantiateViewController(withIdentifier: "AddressViewC") as? AddressViewC{
//            for i in 0...personal.count-1{
//                addressViewC.prsnlDetails[i] = personal[i]
//            }
//            addressViewC.image =  images1[sender.tag]
//
//
//            self.navigationController?.pushViewController(addressViewC, animated: true)
//        }
//
//    }
    
    @IBAction func EditBtnTapped(_ sender: Any) {
        EditBtn.setTitle("Edit", for: .normal)
    }
    
    
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell{
//            cell.cellImage.image = images1[indexPath.row]
//            cell.ImageBtn.setImage(images1[indexPath.item], for: .normal)
//            cell.deleteBtn.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
//
//            cell.ImageBtn.addTarget(self, action: #selector(ImageTapped), for: .touchUpInside)
//            cell.ImageBtn.tag = indexPath.item
//            cell.deleteBtn.tag = indexPath.item
//
           // return cell
        return UICollectionViewCell()
        }
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let i = indexPath.row/2
        if i < 2{
            print(indexPath.row)
            if indexPath.row == 0 || indexPath.row == 3{
                return CGSize(width: collectionView.frame.width/3, height: 194)
                
            }
            else{
                return CGSize(width: (2/3)*collectionView.frame.width, height: 194)
            }
        }else{
            
            if (i % 2 == 0 && indexPath.row % 2 == 0) || (i % 2 != 0 && indexPath.row % 2 != 0){
                return CGSize(width:collectionView.frame.width/3, height: 194)
            }
                
            else{
                return CGSize(width:(2/3)*collectionView.frame.width , height: 194)
            }
            
        }
        
        
    }
    
    

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images1.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell{
//            
//            cell.tableImage.image = images1[indexPath.row]
//            
//            cell.sizeThatFits(CGSize(width: 202, height: 214))
//            cell.deleteButton.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
//            cell.TblImageBtn.addTarget(self, action: #selector(ImageTapped), for: .touchUpInside)
//            
//            cell.deleteButton.tag = indexPath.row
//            cell.TblImageBtn.tag = indexPath.row
//            return cell
//        }
        return UITableViewCell()
    }
    
    
    
}

