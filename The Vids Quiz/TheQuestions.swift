//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit

struct GameQuestions {
    
    let questions = ["Is there a Bomb in Wii Bowling",
                     "Are you able to destroy the Moon in Zelda Majoras Mask",
                     "Is a Hunter stronger than a Grunt in Halo 3" ,
                     "Is the SSG 08 the strongest Sniper in CSGO" ,
                     "In Halo Combat Evolved the map The Silent Cartographer or the 4th level, Can you walk out in the water Forever?",
                     ""
                     ]
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
}
