//
//  ComposeViewC.swift
//  DBProject
//
//  Created by Akhilesh Gupta on 21/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ComposeViewC: UIViewController {
    
    var ref: DatabaseReference!
    


    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    //MARK:- IBAction
    
    @IBAction func tappedAddPost(_ sender: Any) {
        
        //Write
        ref.child("Name:").childByAutoId().setValue(textView.text)
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedCancelPost(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
