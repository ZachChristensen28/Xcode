//
//  ViewController.swift
//  isPrime
//
//  Created by Jennifer Christensen on 6/6/16.
//  Copyright © 2016 ZDC Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var userInput: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func check(sender: AnyObject) {
        
        let final = Int(userInput.text!)!
        
        var isPrime = true
        
        if final == 1 {
            
            isPrime = false
        }
        
        if final != 2 && final != 1 {
            
            for i in 3 ..< final {
                
                if final % i == 0 {
                    
                    isPrime = false
                }
            }
        }
        
        print(isPrime)
        
        if isPrime {
            
            print("Prime userInput!")
            
        } else{
            
            print("Not a prime userInput")
            
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

