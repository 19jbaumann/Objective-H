//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit



struct GameQuestions {
/*
let questions = ["Is there a Bomb in Wii Bowling", "Are you able to destroy the Moon in Zelda Majoras Mask","Is a Hunter stronger than a Grunt in Halo 3" ,"Is the SSG 08 the strongest Sniper in CSGO" ,"In Halo Combat Evolved the map The Silent Cartographer or the 4th level, Can you walk out in the water Forever?", "In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In Minecraft, Horses are in the game","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters"]
*/
    
    var checker: Bool = true
    
    let trueQuestions = ["In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters", "Swift is very glitchy", "In Avatar the last Airbender Aang was 113 years old."]
    
    let falseQuestions = ["Are you able to destroy the Moon in Zelda Majoras Mask","Is the SSG 08 the strongest Sniper in CSGO", "In Fallout 4 you are in Vegas", "In Halo 3 the arbiter is a brute.", "In Fallout 3 the goal is to get Hoover dam", "In Red vs. Blue Tucker is on red team","In New super mario bros (For Wii) when you get 99 lives your hat comes off"]
    

    func getRandomFalseFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(falseQuestions.count)
        print(randomNumber)
        return falseQuestions[randomNumber]
        
    }
    
    func getRandomTrueFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(trueQuestions.count)
        print(randomNumber)
        return trueQuestions[randomNumber]
    }
    
}


