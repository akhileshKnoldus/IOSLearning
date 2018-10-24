//
//  DisplayFooodVC.swift
//  ImageUploadAssigmnet
//
//  Created by Akhilesh Gupta on 16/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

let kImage:UIImage = #imageLiteral(resourceName: "capsicum")

class DisplayFooodVC: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate{
  
    @IBOutlet weak var MyCollectionData: UICollectionView!
    
    var myDict: [String: AnyObject]?
    var imgUpload=[UIImage]()
    
    @IBOutlet weak var nameOfVegitable: UILabel!
   
    @IBOutlet weak var imgOfVegitable: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDisplayData()
        registerCustomCollectionCell()
//        collectionViewDataCell.delegate = self
//        collectionViewDataCell.dataSource = self
    }
    @IBAction func tapUploadImage(_ sender: Any) {
        if imgUpload.count<5
        {
            loadUploadImage()
        } else{
            return
        }
        
    }
    
    
    
    func registerCustomCollectionCell(){
        let nib = UINib(nibName: "UploadNewVegitableCustomCollectionViewCell", bundle: nil)
        //let nib = UINib(data: "UploadNewVegitableCustomCollectionViewCell", bundle: nil)
        self.MyCollectionData.register(nib, forCellWithReuseIdentifier: "newVegitableCell")
    }
    
    func loadDisplayData(){
        if let valueDict = self.myDict {
            
            if let name = valueDict[vegitableName] as? String {
                self.nameOfVegitable.text = name
            }
            
            if let image = valueDict[vegitableImage] as? UIImage {
                self.imgOfVegitable.image = image
            }
        }
    }
    
    
    func loadUploadImage(){
        
       // let newVegitableArray =  []
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self


        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a Source", preferredStyle: .actionSheet)

        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in

            if UIImagePickerController.isSourceTypeAvailable(.camera){

                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }else{
                print("camera is not aviliable..")
            }

        }))

        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)

        }))

        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:nil))

        self.present(actionSheet, animated: true, completion: nil)

    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("Upload Image")

        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imgUpload.append(image)
        MyCollectionData.reloadData()
        picker.dismiss(animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return UICollectionViewCell
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgUpload.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=MyCollectionData.dequeueReusableCell(withReuseIdentifier: "newVegitableCell", for: indexPath) as? UploadNewVegitableCustomCollectionViewCell
        {
            cell.imgVegitable.image=imgUpload[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}


