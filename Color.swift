//
//  File.swift
//  The Vids Quiz
//
//  Created by Coder on 4/25/16.
//  Copyright © 2016 Objective-Hue. All rights reserved.





//This whole structure makes the quiz change colors every time you press a button!

import UIKit
import GameKit
struct ColorModel {
    let colors = [
        UIColor(red: 98/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),// teal color
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),//
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0),
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0),
        UIColor(red: 190/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),
        UIColor(red: 25/255.0, green: 201/255.0, blue: 166/255.0, alpha: 1.0),
        UIColor(red: 183/255.0, green: 26/255.0, blue: 204/255.0, alpha: 1.0),
        UIColor(red: 139/255.0, green: 190/255.0, blue: 160/255.0, alpha: 1.0),
        UIColor(red: 177/255.0, green: 75/255.0, blue: 232/255.0, alpha: 1.0),
        UIColor(red: 95/255.0, green: 194/255.0, blue: 193/255.0, alpha: 1.0),
        UIColor(red: 35/255.0, green: 76/255.0, blue: 212/255.0, alpha: 1.0)
    ]
    
    func getrandomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(colors.count)
        return colors[randomNumber]
        
    }
    
    
}











