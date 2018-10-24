//
//  ViewController.swift
//  Dice
//
//  Created by Akhilesh Gupta on 25/09/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    let arrayDice = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5", "dice6"]

    @IBOutlet weak var dieceImageView1: UIImageView!
    @IBOutlet weak var dieceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPress(_ sender: Any) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
         randomDiceIndex2 = Int(arc4random_uniform(6))
        
        dieceImageView1.image = UIImage(named: arrayDice[randomDiceIndex1])
        dieceImageView2.image = UIImage(named: arrayDice[randomDiceIndex2 ])
       
        print(randomDiceIndex1)
        print(randomDiceIndex2)
        
    }
}

