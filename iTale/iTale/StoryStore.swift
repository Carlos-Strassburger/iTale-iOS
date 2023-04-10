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
        Story(storyImage: UIImage(imageLiteralResourceName: "mount-tower"), storyText: "You are a knight on your way to save the Kingdom’s princess from the evil wizard’s tower on top of the mountain. In the foot of the mountain you find yourself in front of a junction, which path do you take?", choice1: "Take the left road", choice2: "Take the right road", choiceDestination1: 1, choiceDestination2: 4),
        Story(storyImage: UIImage(imageLiteralResourceName: "bandit"), storyText: "You take the left road and walk forward, not many minutes later you are ambushed by a burglar, he doesn’t say anything but you can feel he intends to kill you for your equipment, what will you do?", choice1: "Try your luck and attack the assailant", choice2: "Turn around and run away from the bandit", choiceDestination1: Int.random(in: 2...3), choiceDestination2: 4),
        Story(storyImage: UIImage(imageLiteralResourceName: "dead-knight"), storyText: "In a moment of bad luck you stumble on a rock and the thief gets the best of you, killing you while you're trying to get up", choice1: "The", choice2: "End.", choiceDestination1: 0, choiceDestination2: 0),
        Story(storyImage: UIImage(imageLiteralResourceName: "dead-bandit"), storyText: "You decide to try your luck and attack the assailant. You draw your sword and charge at him, overpowering him and emerging victorious. you notice a piece of paper in the burglar's pocket. It appears to be a map leading to the wizard's tower. What will you do?", choice1: "Take the map and follow it.", choice2: "Keep following the path and leave the map.", choiceDestination1: 8, choiceDestination2: 4),
        Story(storyImage: UIImage(imageLiteralResourceName: "mountain-road"), storyText: "After walking for a long time you are met with yet another junction, this time the left path seems rougher trail and more inclined than the right path, which leads to a softer  climb with a proper road. What road will you take?", choice1: "Take the left path.", choice2: "Take the right path.", choiceDestination1: 5, choiceDestination2: 8),
        Story(storyImage: UIImage(imageLiteralResourceName: "cave-entrance"), storyText: "You take the right path, the softer climb with a proper road. As you make your way up the mountain, you notice a cave off to the side of the path. It seems dark and foreboding. What will you do?", choice1: "Investigate the cave", choice2: "Keep moving forward", choiceDestination1: 7, choiceDestination2: 9),
        Story(storyImage: UIImage(imageLiteralResourceName: "cave-entrance"), storyText: "You decide to investigate the cave and see what's inside. You walk towards the cave, but as you approach, you hear strange noises coming from inside. It sounds like something is growling and snarling. What will you do?", choice1: "Draw your sword and enter the cave", choice2: "Back away from the cave and continue up the path towards the tower", choiceDestination1: 6, choiceDestination2: 8),
        Story(storyImage: UIImage(imageLiteralResourceName: "dead-cave"), storyText: "Not long after entering the cave you get completely blind by its lack of light, the growling stops and suddenly you feel the air moving close to you, you get attacked by an unknown beast and is left to die forgotten forever inside this cursed cave.", choice1: "You", choice2: "Died", choiceDestination1: 0, choiceDestination2: 0),
        Story(storyImage: UIImage(imageLiteralResourceName: "princess-castle"), storyText: "Eventually, you arrive at the wizard's tower, and after a long and perilous journey, you finally find the princess. She's relieved to see you and you both make your way out of the tower.", choice1: "Go", choice2: "On", choiceDestination1: 9, choiceDestination2: 9),
        Story(storyImage: UIImage(imageLiteralResourceName: "evil-wizard"), storyText: "As you emerge from the tower, you notice the evil wizard approaching. He's furious that you've managed to rescue the princess and is determined to stop you. What will you do?", choice1: "Make the first move and attack him", choice2: "Run away with the princess", choiceDestination1: 10, choiceDestination2: 11),
        Story(storyImage: UIImage(imageLiteralResourceName: "ending-fight"), storyText: "you engage in a fierce battle that lasts for hours. It's a tough fight, but in the end, you manage to defeat the wizard and save the kingdom. The princess is grateful for your bravery and you become a hero in the eyes of the people.", choice1: "The", choice2: "End", choiceDestination1: 0, choiceDestination2: 0),
        Story(storyImage: UIImage(imageLiteralResourceName: "ending-run"), storyText: "you manage to evade the wizard and make your way to safety. The kingdom may not be saved, but at least the princess is safe and that's all that matters.", choice1: "The", choice2: "End", choiceDestination1: 0, choiceDestination2: 0),
        
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
