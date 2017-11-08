//
//  Cat.swift
//  DITest
//
//  Created by Openfield Mobility on 08/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

import Foundation

protocol AnimalType {
    var name: String { get }
    func sound() -> String
}

class Cat: AnimalType {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() -> String {
        return "Meow!"
    }
}

class PetOwner {
    let pet: AnimalType
    
    init(pet: AnimalType) {
        self.pet = pet
    }
    
    func play() -> String {
        return "I'm playing with \(pet.name). \(pet.sound())"
    }
}

class Dog: AnimalType {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() -> String {
        return "Bow wow!"
    }
}










/*
WITHOUT DI
 
class Cat {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() -> String {
        return "Meow !"
    }
}

class PetOwner {
    let pet = Cat(name: "Mimi")
    
    func play() -> String {
        return "I'm playing with \(pet.name). \(pet.sound())"
    }
}

let petOwner = PetOwner()
print(petOwner.play())
*/
