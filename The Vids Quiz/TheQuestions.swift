//
//  TheQuestions.swift
//  The Vids Quiz
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.
//

import GameKit





struct GameQuestions {

    var checker: Bool = true
    var questionCounter = 0
    
    var trueQuestions = ["In Destiny The King Is Dead?", "In Skyrim the DawnGuard are Vampire Hunters?", "In Fallout Bottlecaps are the main currency?", "In Pokemon the rarest Pokemon is a Shiny?", "In the Zelda Series Links horse is Epona","In Dragon Age Main series the only 2 Dwarf Followers are Oghren And Varric", "In GTA 5 there are 3 main characters","In Skyrim a Sprrigan is a Nature Guardian","In Garrys Mod is their over 2 million Ad-Ons", "Is MCPON John-117 the name of Master Chief in Halo?","In Minecraft are their Horses","Can you buy a diamond sword from a villiger in Minecraft","In Wii Sports is there a bomb that will explode when you hit it while bowling","In Half Life is there a room made out of Gabe Newwel","Did the wii U come out in 2012","Did the Xbox One come out in 2013","Spongebob is 30 years old", "In Destiny the 3 classes are warlock, hunter, titan?", "In Destiny the taken are the newest enemy class", "In the Secrets of Mana you travel by getting shot out of cannons", "In Secrets of Mana does the Mushroom king takes care of the baby dragon you find?", "In Secrets of Mana does the player wield a weapon called the Mana Sword?", "In Fallout 4 is the newest dlc is Far Harbor?", "In Mass effect is the Main Character called Commander Shepard?", "In Pokemon is the best Pokemon the one with maxed Ev's and Iv's?"]
    
    var falseQuestions = ["Are you able to destroy the Moon in Zelda Majoras Mask","Is the SSG 08 the strongest Sniper in CSGO", "In Fallout 4 you are in Vegas", "In Halo 3 the arbiter is a brute.", "In Fallout 3 the goal is to get Hoover dam", "In Red vs. Blue Tucker is on red team","In New super mario bros (For Wii) when you get 99 lives your hat comes off"]
    
 
    mutating func askQuestion() -> String {
        let picker = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
        if picker == 0 {
            self.checker = true
        } else {
            self.checker = false
        }
        
        switch picker {
            
        case 0: let specificQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(trueQuestions.count)
            let pickedQuestion = trueQuestions[specificQuestion]
            trueQuestions.removeAtIndex(specificQuestion)
        return pickedQuestion
        default: let specificQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(falseQuestions.count)
            let pickedQuestion = falseQuestions[specificQuestion]
            falseQuestions.removeAtIndex(specificQuestion)
        return pickedQuestion
        }
    
    }
    
    

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

