//
//  ViewController.swift
//  ThirdPartyApp
//
//  Created by Akhilesh Gupta on 18/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import ActiveLabel


class ViewController: UIViewController{
    
    @IBOutlet weak var mylabel: ActiveLabel!
    @IBOutlet weak var displayText: ActiveLabel!
    var urldata: String = ""
    override func viewDidLoad() {
         super.viewDidLoad()
        diplayTextTappedMessage()
       
        
    }
    
    func displayMyAlertMsg(userMessage:String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction=UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    
    func diplayTextTappedMessage(){
        mylabel.numberOfLines = 0
        mylabel.enabledTypes = [.mention, .hashtag, .url]
        mylabel.text = "This is a post with #hashtags and a @userhandle https://www.apple.com"
        mylabel.textColor = .black
        
        mylabel.handleHashtagTap { hashtag in
            print("Alert. You just tapped the \(hashtag) hashtag")
            self.displayMyAlertMsg(userMessage: "\(hashtag)")
            self.displayText.text=hashtag
        }
        
        mylabel.handleURLTap{ url in
            print("Success. You just tapped the \(url) hashtag")
           // self.displayMyAlertMsg(userMessage: "\(url)")
           self.urldata = "\(url)"
            self.displayText.text = "\(url)"
            self.moveToSeachVC()
        }
        
        mylabel.handleMentionTap{ mention in
            print("Success. You just tapped the \(mention) hashtag")
            self.displayMyAlertMsg(userMessage: "\(mention)")
            self.displayText.text=mention
        }
        
        
        
       
    }
   
    
    func moveToSeachVC(){
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        if let serachVC = mainSB.instantiateViewController(withIdentifier: "SerachVC") as? SerachVC
        {
            serachVC.data=urldata
            self.navigationController?.pushViewController(serachVC, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

