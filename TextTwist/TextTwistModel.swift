//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class TextTwistModel {
    var userGuess: String
    var allWords = dataModel.chooseRandomInfo()
    
    init(userGuess: String) {
        self.userGuess = userGuess
    }
    
    
    func makeGuess(userGuess: String) -> Bool {
        if allWords.words.contains(userGuess) {
            return true
        } else {
            return false
        }
        
        
    }
    
}
