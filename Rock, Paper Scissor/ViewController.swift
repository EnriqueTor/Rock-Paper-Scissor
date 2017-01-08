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
    
    
    
    
    
    
    
    
    
    //MARK: - Loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Actions
    
    @IBAction func rockPushed(_ sender: Any) {
        
        performSegue(withIdentifier: "resultSegue", sender: self)
        
    }
    
    @IBAction func paperPushed(_ sender: Any) {
        
        
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    @IBAction func scissorPushed(_ sender: Any) {
        
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    
    
    
    
    
}

