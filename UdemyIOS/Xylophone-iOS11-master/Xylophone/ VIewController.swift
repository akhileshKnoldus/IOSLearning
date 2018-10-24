//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    let soundArray = ["note1" , "note2" , "note3" , "note4", "note5" , "note6" , "note7"]
    var palyer : AVAudioPlayer!
    var selectedFilename:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
         selectedFilename = soundArray[sender.tag-1]
        print(selectedFilename)
        soundPlay()
        }
    
    func soundPlay(){
        
        let url  = Bundle.main.url(forResource : selectedFilename , withExtension : "wav")
        do {
            palyer = try AVAudioPlayer(contentsOf: url!)
        } catch let error {
            print(error)
        }
        palyer.play()
    }
    }
    
  



