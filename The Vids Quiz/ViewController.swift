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
    
    
    func questionAnswer() {
        if questions.checker == false {
            pressedButton.text = "Correct!"
        } else {
            pressedButton.text = "Wrong!"
        }
    }
    
    
    
    
    @IBAction func factButtonNo() {
        let randomColor = ColorModel().getrandomColor()
        view.backgroundColor = randomColor
        gameButtonNo.tintColor = randomColor
        gameButtonYes.tintColor = randomColor
        gameQuestionLabel.text = questions.askQuestion()
        
        questionAnswer()

        
        /*
        
       let theLuckyNumber = TrueorFalseNumber()
        
        
        if theLuckyNumber == 1 {
            
            gameQuestionLabel.text = questions.getRandomFalseFact()
            
        } else {
            
            gameQuestionLabel.text = questions.getRandomTrueFact()
 
        }
        */
    }

   
    @IBAction func factButtonYes(){
        let randomColor = ColorModel().getrandomColor()
        view.backgroundColor = randomColor
        gameButtonYes.tintColor = randomColor
        gameButtonNo.tintColor = randomColor
        gameQuestionLabel.text = questions.askQuestion()
        
        questionAnswer()
        
        
  
/*
        let theLuckyNumberTwo = TrueorFalseNumber()
        
        
        if theLuckyNumberTwo == 1 {
            gameQuestionLabel.text = questions.getRandomFalseFact()
            pressedButton.text = "Incorrect!"
        } else {
            gameQuestionLabel.text = questions.getRandomTrueFact()
            pressedButton.text = "Correct!"
        }
*/
    }
}


