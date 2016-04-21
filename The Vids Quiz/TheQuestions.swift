//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit

struct GameQuestions {
    
    let questions = ["In Pokemon the pokemon shiny apearence rate is 1/4096", "In Pokemon gen V the starters are Oshawott, Snivy and Chimchar",  "Is Pokemon Green in English?", "In Pokemon does Aura Sphere has a base power of 90 and never misses?", "In Pokemon is S.S.A.T a Pokemon?", "In Destiny the Warlocks Void super is Nova Bomb?" ]
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
}
