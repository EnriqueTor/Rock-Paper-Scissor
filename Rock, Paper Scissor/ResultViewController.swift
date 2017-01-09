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
    @IBOutlet weak var winnerImage: UIImageView?
    @IBOutlet weak var againButton: UIButton!
    
    // MARK: - Variables
    
    var labelText: String = ""
    var wonImage: UIImage?
    
    // MARK: - Loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        whoWon.text = labelText
        winnerImage?.image = wonImage
        
        print(whoWon.text!)
    }

   // MARK: - Actions
    
    @IBAction func againPushed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
