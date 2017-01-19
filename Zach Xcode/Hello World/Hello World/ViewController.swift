//
//  ViewController.swift
//  Hello World
//
//  Created by Jennifer Christensen on 5/26/16.
//  Copyright © 2016 ZDC Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func Submit(sender: AnyObject) {
        
        print("Button tapped")
        
        Label.text = textField.text 
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Zach")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

