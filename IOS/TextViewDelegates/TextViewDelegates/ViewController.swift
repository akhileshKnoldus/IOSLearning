//
//  ViewController.swift
//  TextViewDelegates
//
//  Created by Akhilesh Gupta on 20/09/18.
//  Copyright © 2018 appventurez.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     super.touchesBegan(touches, with: event)
    self.textView.resignFirstResponder()
      }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.backgroundColor = UIColor.gray
    }
   
    func textViewDidEndEditing(_ textView: UITextView) {
      textView.backgroundColor = UIColor.white
    }


}

