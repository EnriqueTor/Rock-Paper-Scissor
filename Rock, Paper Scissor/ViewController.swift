//
//  ViewController.swift
//  Rock, Paper Scissor
//
//  Created by Enrique Torrendell on 1/7/17.
//  Copyright © 2017 Enrique Torrendell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    
    // MARK: - Variables
    
    var playerPlay: String = ""
    var computerPlay: String = ""
    let optionsPlay: [String] = ["rock", "paper", "scissor"]
    var result = ""
    
    //MARK: - Loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    // MARK: - Actions
    
    @IBAction func rockPushed(_ sender: UIButton) {
        
        playerHand(sender: sender)
        computerHand()
        results()
        
        print(playerPlay)
        print(computerPlay)
        print(result)
        
        performSegue(withIdentifier: "resultSegue", sender: self)
        
    }
    
    @IBAction func paperPushed(_ sender: UIButton) {
        
        playerHand(sender: sender)
        computerHand()
        results()
        
        print(playerPlay)
        print(computerPlay)
        print(result)
        
        performSegue(withIdentifier: "resultSegue", sender: self)
        
    }
    
    @IBAction func scissorPushed(_ sender: UIButton) {
        
        playerHand(sender: sender)
        computerHand()
        results()
        
        print(playerPlay)
        print(computerPlay)
        print(result)
        
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    func playerHand(sender: UIButton) {
        
        playerPlay = (sender.currentImage?.accessibilityIdentifier)!
        
    }
    
    func computerHand() {
        
        let random = Int(arc4random_uniform(UInt32(optionsPlay.count)))
        
        computerPlay = optionsPlay[random]
        
    }
    
    func results() {
        
        // TIE
        if playerPlay == "rock" && computerPlay == "rock" || playerPlay == "paper" && computerPlay == "paper" || playerPlay == "scissor" && computerPlay == "scissor" {
            
            result = "TIE"
        }
        
        // PLAYER WON
        if playerPlay == "paper" && computerPlay == "rock" || playerPlay == "rock" && computerPlay == "scissor" || playerPlay == "scissor" && computerPlay == "paper" {
            
            result = "PLAYER WON"
        }
        
        // COMPUTER WON
        if playerPlay == "paper" && computerPlay == "scissor" || playerPlay == "rock" && computerPlay == "paper" || playerPlay == "scissor" && computerPlay == "rock" {
            
            result = "COMPUTER WON"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "resultSegue" {
            
            let dest = segue.destination as! ResultViewController
            
            dest.labelText = result
            
        }
    }
    
}

