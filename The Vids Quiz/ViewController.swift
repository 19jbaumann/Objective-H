//
//  ViewController.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = GameQuestions()

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
    
    @IBAction func factButtonNo() {
        gameQuestionLabel.text = questions.getRandomFact()
        pressedButton.text = "You answered no?"
    }

   
    @IBAction func factButtonYes() {
        gameQuestionLabel.text = questions.getRandomFact()
        pressedButton.text = "You answered yes?"
 
}
}
var hello = "Hi"

