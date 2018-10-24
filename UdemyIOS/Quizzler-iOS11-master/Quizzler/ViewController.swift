//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestion =  QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber :Int = 0
    var score : Int = 0
    
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestion.list[0]
        questionLabel.text = firstQuestion.questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1{
            //print("Right Answer")
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            //print("Wrong Answer")
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
       

    }
    
    
    func updateUI() {
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionNumber + 1)/ 13"
        progressLabel.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
      
    }
    

    func nextQuestion() {
        if questionNumber <= 12 {
            updateUI()
         questionLabel.text = allQuestion.list[questionNumber].questionText
        }
        else {
            //print("End Of The Quiz......")
            //questionNumber = 0

       let alert = UIAlertController(title: "Complete Game", message: "You have sucessfully Complete Game ", preferredStyle: .alert)
            // Action
            
            let restartAction = UIAlertAction(title: "Restart", style:.default, handler : {(UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)

            present(alert , animated: true , completion: nil)
        }
    }

    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            print("Right Answer.")
            score = score + 1
        }
        else {
            print("Wrong Answer")
        }
        
        
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
       
    }
    

    
}
