//
//  ResultViewController.swift
//  Rock, Paper Scissor
//
//  Created by Enrique Torrendell on 1/8/17.
//  Copyright © 2017 Enrique Torrendell. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var whoWon: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var againButton: UIButton!
    
    
    // MARK: - Loads
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   // MARK: - Actions
    
    @IBAction func againPushed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
