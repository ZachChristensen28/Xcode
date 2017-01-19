//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Jennifer Christensen on 5/27/16.
//  Copyright © 2016 ZDC Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var userInput: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        
        let randomNumber = String(arc4random_uniform(6))

        let userGuess = userInput.text
        
        if userGuess == randomNumber {
            
            resultLabel.text = "Nice Job!"
            
        } else if userGuess == "" || userGuess == " " {
            
            resultLabel.text = "Please Enter a number"
            
            
        } else {
            
            resultLabel.text = "Try AGAIN, The number was " + randomNumber
            
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

