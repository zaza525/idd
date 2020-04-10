//
//  StoryboardViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/12/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {
    
    @IBOutlet weak var labelToUpdate: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height/2
    }
    
    var counter = 0
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        counter += 1
        labelToUpdate.text = "\(counter)"
    }
    
}
