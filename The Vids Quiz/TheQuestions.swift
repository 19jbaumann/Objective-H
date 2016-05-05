//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit



struct GameQuestions {

let questions = ["Is there a Bomb in Wii Bowling", "Are you able to destroy the Moon in Zelda Majoras Mask","Is a Hunter stronger than a Grunt in Halo 3" ,"Is the SSG 08 the strongest Sniper in CSGO" ,"In Halo Combat Evolved the map The Silent Cartographer or the 4th level, Can you walk out in the water Forever?", "In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In Minecraft, Horses are in the game","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters","In Ark Survival Evolved can you tame a Titan Boa?", "Are there phasers in Lego Star Wars?", "Are Macs good for Gaming?","Are Conan O'Brien and Andy Richter in Halo 4?","Are Conan O'Brien and Andy Richter in Halo 4?","In Half Life is there a room of Gaben?","Are there Minecraft Creepers in Borderlands 2?"]

    
    let trueQuestions = ["In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In Minecraft, Horses are in the game","In Skyrim a Sprrigan is a Nature Guardian", "In GTA 5 there are 3 main characters", "Are there Minecraft Creepers in Borderlands 2?","In Half Life is there a room of Gaben?", "Are Conan O'Brien and Andy Richter in Halo 4?"]
    
    let falseQuestions = ["In Ark Survival Evolved can you tame a Titan Boa?", "Are you able to destroy the Moon in Zelda Majoras Mask","Is the SSG 08 the strongest Sniper in CSGO", "Are Macs good for Gaming?", "Are there phasers in Lego Star Wars?","In Rocket League can you score a Goal in 4 Seconds "]
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(questions.count)
        
        return questions[randomNumber]
    }
    
    func newRandomNumber() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
        
        return questions[randomNumber]
    }
}


