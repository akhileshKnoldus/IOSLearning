//
//  CameraAcess.swift
//  TextRecognition
//
//  Created by Akhilesh Gupta on 23/11/18.
//  Copyright © 2018 Training. All rights reserved.
//

import UIKit

class CameraAcess: UIViewController , UIImagePickerControllerDelegate ,UINavigationControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      }
    
    func moveToVC(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let VC = mainSB.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            self.navigationController?.pushViewController(VC, animated: true)
        }
    }
    func cameraCode(){
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
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
//
//        picker.dismiss(animated: true, completion: nil)
//    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
       
    @IBAction func tappedOCR(_ sender: Any) {
        cameraCode()
        moveToVC()
    }
    
    

    
        
}
