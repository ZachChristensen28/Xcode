//
//  ViewController.swift
//  test
//
//  Created by Sight Syndicate on 2/4/17.
//  Copyright © 2017 Sight Syndicate | Virtual Home Tours. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var catAgeLabel: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        
        let catYear = Int(userInput.text!)! * 7
        
        catAgeLabel.text = String(catYear)
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

