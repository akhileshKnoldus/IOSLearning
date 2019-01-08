//
//  ViewController.swift
//  APICall Practice
//
//  Created by Akhilesh Gupta on 02/01/19.
//  Copyright © 2019 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    
    // MARK: - Properties
    let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")

    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APICall()
    }
    
    // MARK: - Private Method
    
    private func APICall(){
        
    if let url = urlString {
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if error != nil {
                print(error!)
            } else {
                if let usableData = data {
                    print(usableData) //JSONSerialization
                }
            }
        }
        task.resume()
        }
}
}
