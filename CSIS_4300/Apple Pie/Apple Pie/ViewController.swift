//
//  ViewController.swift
//  Apple Pie
//
//  Created by Sight Syndicate on 3/5/18.
//  Copyright © 2018 Zach Christensen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var treeImageView: UIImageView!
    
    // CUSTOM
    @IBOutlet weak var sliderOutlen: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var evilLabel: UILabel!
    
    var random = 0
    var random2 = 0
    var listOfWords = Words().wordlist
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Quick and dirty
        sliderLabel.text = "\(Int(sliderOutlen.value))"
    }
    @IBAction func startButton(_ sender: UIButton) {
        newRound()
    }
    
    func newRound() {
        random = Int(arc4random_uniform(UInt32(listOfWords.count)))
        random2 = Int(arc4random_uniform(UInt32(listOfWords.count)))
        if !listOfWords.isEmpty {
            let newWord = listOfWords[random]
            if newWord.count == Int(sliderOutlen.value) {
                currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
                enableLetterButtons(true)
                updateUI()
            } else {
                newRound()
            }
            
        } else {
            enableLetterButtons(false)
        }
    }
    
    @IBAction func sliderUpdate(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        
        sliderLabel.text = "\(currentValue)"
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord.characters {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        evilLabel.text = listOfWords[random2]
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
}

