//
//  ViewController.swift
//  Extension
//
//  Created by Akhilesh Gupta on 31/12/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func tappedAlertBtn(_ sender: Any) {
        self.popupAlert(title: "IDine.", message: "Alert Extesnion", actionTitles: ["OK" , "Cancel"], actionStyle: [.default , .cancel] , action: [
            {_ in
            print("OK")
            } , {_ in
                print("Cancel.")
            }
            ] )
    }
}

extension String {
    
    func replace(target: String , withString : String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
}
