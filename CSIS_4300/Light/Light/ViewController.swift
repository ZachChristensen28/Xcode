//
//  ViewController.swift
//  Light
//
//  Created by Sight Syndicate on 2/21/18.
//  Copyright © 2018 Zach Christensen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightIsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightIsOn ? .white : .black
    }

    @IBAction func toggleLight(_ sender: UIButton) {
        lightIsOn = !lightIsOn
        updateUI()
    }
}

