//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit



struct GameQuestions {
    
let questions = ["Is there a Bomb in Wii Bowling", "Are you able to destroy the Moon in Zelda Majoras Mask","Is a Hunter stronger than a Grunt in Halo 3" ,"Is the SSG 08 the strongest Sniper in CSGO" ,"In Halo Combat Evolved the map The Silent Cartographer or the 4th level, Can you walk out in the water Forever?"]

    
    let trueQuestions = ["In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In Minecraft, Horses are in the game","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters"]
    
    let falseQuestions = []

    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
}