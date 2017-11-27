//
//  MainViewController.swift
//  DITest
//
//  Created by Openfield Mobility on 08/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

import UIKit
import Swinject

class MainViewController: UIViewController {
    
    let container = Container()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        container.register(AnimalType.self) { _ in Cat(name: "Mimi") }
        container.register(PetOwner.self) { r in
            PetOwner(pet: r.resolve(AnimalType.self)!)
        }
        
        self.main()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MainViewController {
    func main() {
        let catOwner = PetOwner(pet: Cat(name: "Mimi"))
        print(catOwner.play())
        
        let dogOwner = PetOwner(pet: Dog(name: "Hachi"))
        print(dogOwner.play())
        
        let petOwner = self.container.resolve(PetOwner.self)!
        print(petOwner.play())
    }
}
