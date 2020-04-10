//
//  ClassesViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/12/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class Animal {
    var species: String
    var name: String
    
    init(species: String, name: String) {
        self.species = species
        self.name = name
    }
    
    func speak() -> String {
        return "My name is \(name) and I am a \(species)!"
    }
}

class Dog: Animal {
    // YOUR CODE HERE: Define custom behavior for speak!
}

class Cat: Animal {
    // YOUR CODE HERE: Define custom behavior for speak!
}

class ClassesViewController: UIViewController {

    // Superclass variable to work with
    var animal: Animal?
    
    @IBOutlet var speakLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // Set animal var defined above viewDidLoad to a new instance of a dog
    @IBAction func dogSelected(_ sender: Any) {
        // YOUR CODE HERE
       
    }
    
    // Set animal var defined above viewDidLoad to a new instance of a cat
    @IBAction func catSelected(_ sender: Any) {
        // YOUR CODE HERE

    }
    
    // Update the speakLabel.text property to the result of animal.speak()
    @IBAction func speakPressed(_ sender: Any) {
        // YOUR CODE HERE
       
    }
}
