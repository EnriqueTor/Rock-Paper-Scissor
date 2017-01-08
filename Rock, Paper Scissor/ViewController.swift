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
    let optionsPlay: [String] = [Hand.rock.rawValue, Hand.paper.rawValue, Hand.scissor.rawValue]
    var result = ""
    var imageResult = UIImage()
    
    //MARK: - Loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    // MARK: - Actions
    
    @IBAction func buttonPushed(_ sender: UIButton) {
        
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
        
        if playerPlay == Hand.rock.rawValue {
            
            switch computerPlay {
                
            case Hand.rock.rawValue:
                result = "TIE"
                imageResult = UIImage(named: "itsATie")!

            case Hand.paper.rawValue:
                result = "COMPUTER WON"
                imageResult = UIImage(named: "PaperCoversRock")!
                
            case Hand.scissor.rawValue:
                result = "PLAYER WON"
                imageResult = UIImage(named: "RockCrushesScissors")!
                
            default:
                break
                
            }
        }
        
        if playerPlay == Hand.paper.rawValue {
            
            switch computerPlay {
                
            case Hand.rock.rawValue:
                result = "PLAYER WON"
                imageResult = UIImage(named: "PaperCoversRock")!
                
            case Hand.paper.rawValue:
                result = "TIE"
                imageResult = UIImage(named: "itsATie")!

            case Hand.scissor.rawValue:
                result = "COMPUTER WON"
                imageResult = UIImage(named: "ScissorsCutPaper")!
                
            default:
                break
                
            }
        }

        if playerPlay == Hand.scissor.rawValue {
            
            switch computerPlay {
                
            case Hand.rock.rawValue:
                result = "COMPUTER WON"
                imageResult = UIImage(named: "RockCrushesScissors")!
                
            case Hand.paper.rawValue:
                result = "PLAYER WON"
                imageResult = UIImage(named: "ScissorsCutPaper")!
                
            case Hand.scissor.rawValue:
                result = "TIE"
                imageResult = UIImage(named: "itsATie")!

            default:
                break
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "resultSegue" {
            
            let dest = segue.destination as! ResultViewController
            
            dest.labelText = result
            dest.wonImage = imageResult
            
        }
    }
}

