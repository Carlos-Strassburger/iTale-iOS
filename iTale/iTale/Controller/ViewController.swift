//
//  ViewController.swift
//  iTale
//
//  Created by Carlos Strassburger Filho on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var storyOutput: UILabel!
    @IBOutlet weak var imageBanner: UIImageView!
    
    var storyStore = StoryStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func onChoice(_ sender: UIButton) {
        storyStore.getNextStoryPrompt(userChoice: sender.currentTitle!)
        sender.backgroundColor = UIColor(white: 1, alpha: 0.5)
        updateUI()
    }
    
    func updateUI() {
        storyOutput.text = storyStore.getStoryText()
        choice1.setTitle(storyStore.getStoryChoice1(), for: .normal)
        choice2.setTitle(storyStore.getStoryChoice2(), for: .normal)
        imageBanner.image = storyStore.getStoryImage()
    }
    
}

