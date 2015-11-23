//
//  Zombie.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/18/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation
//declarado la herencia de la clase de Mosnter
class Zombie : Monster{

    var walksWithLimp = true
    //sobreescribiendo el método de la clase Monster
    // final significa que ya no puede volver a sobreescribir en otra subclase
   final override func terrorizeTown() {
        town?.changePopulation(-20)
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool){
        self.name = name
        self.walksWithLimp = walksWithLimp
    }

}