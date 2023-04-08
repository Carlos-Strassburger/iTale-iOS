//
//  Story.swift
//  iTale
//
//  Created by Carlos Strassburger Filho on 05/04/23.
//

import Foundation
import UIKit

struct Story {
    let storyImage: UIImage
    let storyText: String
    let choice1: String
    let choice2: String
    let choiceDestination1: Int
    let choiceDestination2: Int
    
    init(storyImage: UIImage, storyText: String, choice1: String, choice2: String, choiceDestination1: Int, choiceDestination2: Int) {
        self.storyImage = storyImage
        self.storyText = storyText
        self.choice1 = choice1
        self.choice2 = choice2
        self.choiceDestination1 = choiceDestination1 
        self.choiceDestination2 = choiceDestination2
    }
}
