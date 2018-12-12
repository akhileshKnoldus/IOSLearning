//
//  ViewController.swift
//  Programing
//
//  Created by Akhilesh Gupta on 28/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for result in "AKHILESH"{
            print(result, separator: " ")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}
extension ViewController {
    
    
    func map(){
        
    }
    
//    func findLargetNumber(array : [Int]) -> (large:Int , small: Int){
////        var sortedArray = [Int](count :array.count)
////           sortedArray = array.sorted()
////        let s = array[0]
////        let l = array[array.count]
//        for arr in array {
//
//        }
//        return (l , s)
//
//    }
//
//    func result(){
//
//        let num = findLargetNumber(array: [40,12,-5,78,98])
//        print("Largest number is: \(num.large) and smallest number is: \(num.small)")
//    }
}

