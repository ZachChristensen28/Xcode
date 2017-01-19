//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Jennifer Christensen on 6/9/16.
//  Copyright © 2016 ZDC Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    
    var time = 0
    
    var timer = NSTimer()
    
    
    func play() {
        
        time += 1
        
        timerLabel.text = String(time)
        
    }
    
    func pause() {
        
        time += 0
        timerLabel.text = String(time)
        
    }
    
    func reset() {
        
        time = 0
        timerLabel.text = String(time)
        
    }
    
    
    @IBAction func playButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: (#selector(ViewController.play)), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        var isPaused = false
        
        if isPaused{
            timer = NSTimer.scheduledTimerWithTimeInterval(Double(time), target: self, selector: (#selector(ViewController.pause)), userInfo: nil, repeats: true)
            isPaused = false
        } else {
            timer.invalidate()
            isPaused = true
        }
        
    }
    
    
    @IBAction func resetButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0, target: self, selector: (#selector(ViewController.reset)), userInfo: nil, repeats: false)
        
        
    }
    


    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//time number in the middle, start, pause, reset