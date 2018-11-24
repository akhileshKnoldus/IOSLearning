//
//  ViewController.swift
//  JSONParsing
//
//  Created by Akhilesh Gupta on 12/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit



struct Course : Decodable{
    
    let id : Int
    let name : String
    let link : String
    let imageURL : String
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        jsonSetup()
    }
    
    //MARK:- JSON SETUP
    
    func jsonSetup() {
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        
        guard let url = URL(string: jsonUrlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data , response , err) in
            guard let data =  data else { return }
            do{
                let course = try JSONDecoder().decode([Course].self, from: data)
                print(course)
            } catch let jsonErr {
                print("Error Serilising json" , jsonErr)
            }
        }
        
    }
}

