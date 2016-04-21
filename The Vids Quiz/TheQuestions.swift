//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit

struct GameQuestions {
    
    let questions = [" Inhow did Alduin die?", "How do you stop the moon from destroying the planet in Majora's Mask","Is a Hunter stronger than a Grunt in Halo 3"]
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
}
