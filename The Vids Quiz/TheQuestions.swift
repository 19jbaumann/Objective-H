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
let questions = ["Is there a Bomb in Wii Bowling", "Are you able to destroy the Moon in Zelda Majoras Mask","Is a Hunter stronger than a Grunt in Halo 3" ,"Is the SSG 08 the strongest Sniper in CSGO" ,"In Halo Combat Evolved the map The Silent Cartographer or the 4th level, Can you walk out in the water Forever?", "In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In Minecraft, Horses are in the game","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters/Users/coder/Desktop/Objective-H/The Vids Quiz"]

    */
    var checker: Bool = true
    
    let trueQuestions = ["In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In GTA 5 there are 3 main characters","In Skyrim a Sprrigan is a Nature Guardian","In Garrys Mod is their over 2 million Ad-Ons", "Is MCPON John-117 the name of Master Chief in Halo?","In Minecraft are their Horses","Can you buy a diamond sword from a villiger in Minecraft","In Wii Sports is there a bomb that will explode when you hit it while bowling",""]
    
    let falseQuestions = ["Are you able to destroy the Moon in Zelda Majoras Mask","Is the SSG 08 the strongest Sniper in CSGO" ,"In Halo 4 is Cortana on your team?", "In csgo when you are on a ladder are your shot accurate?", "In Minecraft the creepers the only enemy that explode", "In Dragon age you must always be a human?", "In fallout 4 you can drive cars?","In Skyrim Werewolves are all aggresive?", "In Halo Johnson died at a coventenent ship", "In minecraft cats attack creepers  "]
    
    func TrueorFalseNumber() -> Int {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
        
        
        return randomNumber
    }

    func getRandomFalseFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(falseQuestions.count)
        
        return falseQuestions[randomNumber]
        
    }
    
    func getRandomTrueFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(trueQuestions.count)
        
        return trueQuestions[randomNumber]
    }
    
}


