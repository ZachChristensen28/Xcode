//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Sight Syndicate on 2/9/17.
//  Copyright © 2017 z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInput: UITextField!
    @IBAction func submitButton(_ sender: Any) {
        
        UserDefaults.standard.set(userInput.text, forKey: "phoneNumber")
       
        }
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "phoneNumber")
        if let phoneNumber = numberObject as? String {
           userInput.text = phoneNumber
        }
        
            
        UserDefaults.standard.set("Zach", forKey: "name")
        
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
            print(name)
        }
        
        
        let a = [1,2,3,4]
        
        UserDefaults.standard.set(a, forKey:"array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

