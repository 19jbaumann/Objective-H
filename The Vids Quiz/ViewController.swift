//
//  ViewController.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import UIKit
import GameKit

//this generates a random number of 0 or 1. The number helps pick whether the question is true or false

func TrueorFalseNumber() -> Int {
    let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
print(randomNumber)
    
    return randomNumber
}



class ViewController: UIViewController {
  
    //These help with your score
var questions = GameQuestions()
var correctCounter = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //These are all the buttons and labels
    @IBOutlet weak var gameQuestionLabel: UILabel!

    @IBOutlet weak var pressedButton: UILabel!
    
    @IBOutlet weak var gameButtonYes: UIButton!
    
    @IBOutlet weak var gameButtonNo: UIButton!
    
    
    
    
   //This is the NO button
    
    @IBAction func factButtonNo() {
        let randomColor = ColorModel().getrandomColor()
        view.backgroundColor = randomColor
        gameButtonNo.tintColor = randomColor
        gameButtonYes.tintColor = randomColor
        
        if questions.questionCounter == 25 || gameQuestionLabel.text == "Game over! Your score is \(correctCounter/25*100)% Would you like to play again?" {
            gameQuestionLabel.text = questions.trueQuestions[100]
        }
        
        if questions.checker == false {
            pressedButton.text = "Correct!"
            correctCounter = correctCounter + 1
        } else {
            pressedButton.text = "Wrong!"
        }
        
            gameQuestionLabel.text = questions.askQuestion()
        
        questions.questionCounter = questions.questionCounter + 1
        
        if questions.questionCounter == 25 {
            gameQuestionLabel.text = "Game over! Your score is \(correctCounter/25*100)% Would you like to play again?"
           }
        
        

    }

    
    //This is the YES button
   
    @IBAction func factButtonYes(){
        let randomColor = ColorModel().getrandomColor()
        view.backgroundColor = randomColor
        gameButtonYes.tintColor = randomColor
        gameButtonNo.tintColor = randomColor
        
        if questions.checker == false {
            pressedButton.text = "Wrong!"
        } else {
            pressedButton.text = "Correct!"
            correctCounter = correctCounter + 1
        }
        
            gameQuestionLabel.text = questions.askQuestion()
        

        questions.questionCounter = questions.questionCounter + 1

        if questions.questionCounter == 25 {
            gameQuestionLabel.text = "Game over! Your score is \(correctCounter/25*100)% Would you like to play again?"
        }
        
        if questions.questionCounter == 25 || gameQuestionLabel.text == "Game over! Your score is \(correctCounter/25*100)% Would you like to play again?" {
            questions = GameQuestions()
            correctCounter = 0.0
        }
        
  
    }
}

// This is our Quiz app! Made by Jaschon, Tiger, and Matt. Enjoy!





