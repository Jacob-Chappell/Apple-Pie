//
//  Game.swift
//  Apple Pie
//
//  Created by Jacob Chappell on 10/8/19.
//  Copyright © 2019 Jacob Chappell. All rights reserved.
//

import Foundation

struct Game{
    var word: String;
    var movesRemain: Int;
    var guessed: [String];
    let alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
    
    mutating func playerGuessed(letter: String) {
        guessed.append(letter);
        if !word.contains(letter) {
            movesRemain -= 1;
        }
    }
    
    mutating func guessAll(){
        guessed = alphabet;
    }
    
    var formatWord: String {
        var str = word;
        
        for letter in alphabet{
            if(!guessed.contains(letter)){
                str = str.replacingOccurrences(of: letter, with: "-");
            }
        }
        
        return str
    }
}
