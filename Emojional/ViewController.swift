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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // user clicks on button
        // click creates a message file
        
        let selectedEmotion = sender.titleLabel?.text
    
        let alertController = UIAlertController(title: "Welcome to your emotion:", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)
    
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
        present(alertController, animated: true, completion: nil)
   
    }
    
}

