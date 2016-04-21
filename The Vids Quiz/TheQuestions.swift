//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit

struct GameQuestions {
    
    let questions = ["In Pokemon the pokemon shiny apearence rate is 1/4096", "In Pokemon gen V the starters are Oshawott Snivy and Chimchar",  "In Pokemon "]
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
}
