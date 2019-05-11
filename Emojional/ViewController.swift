//
//  ViewController.swift
//  Emojional
//
//  Created by ERIC SMITH on 5/11/19.
//  Copyright © 2019 ERIC SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // user clicks on button
        // click creates a message file
    
        let alertController = UIAlertController(title: "title", message: "message", preferredStyle: UIAlertController.Style.alert)
    
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
    present(alertController, animated: true, completion: nil)
   
    }


}

