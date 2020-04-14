//
//  ViewController.swift
//  ImagePicker-Starter
//
//  Created by RJ Pimentel on 2/27/20.
//  Copyright © 2020 RJ Pimentel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var outerStackView: UIStackView!
    // YOUR CODE HERE: create an instance of your model
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func randomizeButtonPressed(_ sender: Any) {
        
    }
    
    // This method should iterate through the stack views and set the image of each button
    func updateView() {
        for outerSubView in outerStackView.arrangedSubviews {
            // Each of these subviews is itself a UIStackView
            // Each arrangedSubviews is of type [UIView], so we'll have to cast. The outer vertical stack view contains four horzontal stack views, so we'll cast to UIStackView.
            guard let horizontalStack = outerSubView as? UIStackView else { return }
            for innerSubView in horizontalStack.arrangedSubviews {
                guard let button = innerSubView as? UIButton else { return }
                // Linking the buttons to a method programatically
                button.addTarget(self, action: #selector(imageButtonPressed(_:)), for: .touchUpInside)
                // YOUR CODE HERE
            }
        }
    }
    
    // This method should read the image from the button, call performSegue and send the image to the next View Controller
    @objc func imageButtonPressed(_ sender: UIButton) {
        
    }
    
    // This method should set the image to display in the next View Controller.
    // HINT: the sender argument here is passed from the sender argument in the performSegue function.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

