//
//  ViewController.swift
//  Emojional
//
//  Created by ERIC SMITH on 5/11/19.
//  Copyright © 2019 ERIC SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["😱": "I'm afraid", "😃": "I'm happy", "😘": "I'm loved", "🤣": "I'm laughing"]
    
    let customMessages =
        ["I'm afraid" : ["It's gonna be ok", "take a deep breath", "How can I help?"],
         "I'm happy": ["Horay!", "You rock!", "I'm proud of you!"],
         "I'm loved" : ["Yes you are", "So grateful for you", "Who is the lucky person?"],
         "I'm laughing" : ["What's so funny?!", "Your laugh is contagious", "haha!"]
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // user clicks on button
        // click creates a message file
        let selectedEmotion = sender.titleLabel?.text
        
        let emotionDictionary = customMessages[emojis[selectedEmotion!]!]
        let randomNumber = Int.random(in: 0 ..< emotionDictionary!.count)
        let emojiMessage = emotionDictionary?[randomNumber]
        
        let alertController = UIAlertController(title: "Welcome to your emotion:", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
    
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
        present(alertController, animated: true, completion: nil)
   
    }
    
}

