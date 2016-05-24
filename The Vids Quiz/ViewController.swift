//
//  ViewController.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import UIKit
import GameKit


func TrueorFalseNumber() -> Int {
    let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
print(randomNumber)
    
    return randomNumber
}



class ViewController: UIViewController {
    
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

    @IBOutlet weak var gameQuestionLabel: UILabel!

    @IBOutlet weak var pressedButton: UILabel!
    
    @IBOutlet weak var gameButtonYes: UIButton!
    
    @IBOutlet weak var gameButtonNo: UIButton!
    
    
    @IBAction func factButtonNo() {
        let randomColor = ColorModel().getrandomColor()
        view.backgroundColor = randomColor
        gameButtonNo.tintColor = randomColor
        gameButtonYes.tintColor = randomColor


        if questions.checker == false {
            pressedButton.text = "Correct!"
            correctCounter = correctCounter + 1
        } else {
            pressedButton.text = "Wrong!"
        }
       gameQuestionLabel.text = questions.askQuestion()
        
        questions.questionCounter = questions.questionCounter + 1
        
        if questions.questionCounter == 10 {
            gameQuestionLabel.text = "Game over! Your score is \(correctCounter*10)%"
        }

    }

   
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

        if questions.questionCounter == 10 {

            gameQuestionLabel.text = "Game over! Your score is \(correctCounter*10)%"

        }
  
    }
}

