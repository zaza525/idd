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
    override func speak() -> String {
        return "Woof Woof Woof I am a dog!"
    }
}

class Cat: Animal {
    // YOUR CODE HERE: Define custom behavior for speak!
    override func speak() -> String {
        return "Meow Meow Meow I am a cat!"
    }
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
        animal = Dog(species: "Golden Retriever", name: "Wilfurd")
       
    }
    
    // Set animal var defined above viewDidLoad to a new instance of a cat
    @IBAction func catSelected(_ sender: Any) {
        // YOUR CODE HERE
        animal = Cat(species: "Grey/Black feline", name: "Meowtwo")
    }
    
    // Update the speakLabel.text property to the result of animal.speak()
    @IBAction func speakPressed(_ sender: Any) {
        // YOUR CODE HERE
        if let pet = animal {
            speakLabel.text = pet.speak()
        } else {
            speakLabel.text = "No animal has been selected"
        }
       
    }
}
