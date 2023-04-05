//
//  StoryStore.swift
//  iTale
//
//  Created by Carlos Strassburger Filho on 05/04/23.
//

import Foundation
import UIKit

struct StoryStore {
    
    let story = [
        Story(storyImage: UIImage(imageLiteralResourceName: "mount-tower"), storyText: "You are a knight on your way to save the Kingdom’s princess from the evil wizard’s tower on top of the mountain. In the foot of the mountain you find yourself in front of a junction, which path do you take?", choice1: "Take the left road", choice2: "Take the right road", choiceDestination1: 2, choiceDestination2: 3),
        Story(storyImage: UIImage(imageLiteralResourceName: "mountain-road"), storyText: "You take the left road and walk forward, not many minutes later you are ambushed by a burglar, he doesn’t say anything but you can feel he intends to kill you for your equipment, what will you do?", choice1: "Try your luck and attack the assailant", choice2: "Turn around and run away from the bandit", choiceDestination1: 0, choiceDestination2: 0)
    ]
    
    var storyNumber = 0
    
    mutating func getNextStoryPrompt(userChoice: String) {
        if userChoice == story[storyNumber].choice1 {
            storyNumber = story[storyNumber].choiceDestination1
        } else {
            storyNumber = story[storyNumber].choiceDestination2
        }
    }
    
    func getStoryImage() -> UIImage {
        return story[storyNumber].storyImage
    }
    
    func getStoryText() -> String {
        return story[storyNumber].storyText
    }
    
    func getStoryChoice1() -> String {
        return story[storyNumber].choice1
    }
    
    func getStoryChoice2() -> String {
        return story[storyNumber].choice2
    }
}
