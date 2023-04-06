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
        Story(storyImage: UIImage(imageLiteralResourceName: "mount-tower"), storyText: "You are a knight on your way to save the Kingdom’s princess from the evil wizard’s tower on top of the mountain. In the foot of the mountain you find yourself in front of a junction, which path do you take?", choice1: "Take the left road", choice2: "Take the right road", choiceDestination1: 1, choiceDestination2: 2),
        Story(storyImage: UIImage(imageLiteralResourceName: "mountain-road"), storyText: "You take the left road and walk forward, not many minutes later you are ambushed by a burglar, he doesn’t say anything but you can feel he intends to kill you for your equipment, what will you do?", choice1: "Try your luck and attack the assailant", choice2: "Turn around and run away from the bandit", choiceDestination1: 0, choiceDestination2: 0),
        Story(storyImage: UIImage(imageLiteralResourceName: "mountain-road"), storyText: "After walking for a long time you are met with yet another junction, this time the left path seems rougher trail and more inclined than the right path, which leads to a softer  climb with a proper road. What road will you take?", choice1: "Try your luck and attack the assailant", choice2: "Turn around and run away from the bandit", choiceDestination1: 0, choiceDestination2: 0),
        Story(storyImage: UIImage(imageLiteralResourceName: "cave-entrance"), storyText: "You take the right path, the softer climb with a proper road. As you make your way up the mountain, you notice a cave off to the side of the path. It seems dark and foreboding. What will you do?", choice1: "Investigate the cave", choice2: "Keep moving forward", choiceDestination1: <#T##Int#>, choiceDestination2: <#T##Int#>),
        Story(storyImage: UIImage(imageLiteralResourceName: "dead-bandit"), storyText: "You decide to try your luck and attack the assailant. You draw your sword and charge at him, overpowering him and emerging victorious. you notice a piece of paper in the burglar's pocket. It appears to be a map leading to the wizard's tower. What will you do?", choice1: "Take the map and follow it.", choice2: "Keep following the path and leave the map.", choiceDestination1: <#T##Int#>, choiceDestination2: <#T##Int#>),
        Story(storyImage: <#T##UIImage#>, storyText: <#T##String#>, choice1: <#T##String#>, choice2: <#T##String#>, choiceDestination1: <#T##Int#>, choiceDestination2: <#T##Int#>)
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
