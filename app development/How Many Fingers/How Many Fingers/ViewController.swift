//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Sight Syndicate on 2/5/17.
//  Copyright © 2017 Sight Syndicate | Virtual Home Tours. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var userInput: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        
        let randomNumber = Int(arc4random_uniform(5))
        
        if randomNumber == Int(userInput.text!)! {
            answerLabel.text = "You're Right"
        }
        else{
            answerLabel.text = "Wrong, it was \(randomNumber)"
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

