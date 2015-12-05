//
//  Vampire.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/23/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation

class Vampire: Monster {
    override func terrorizeTown(){
        var vampires: [String] = []
        vampires.append("vampire")
        print(vampires.count)
        for _ in vampires{
          town?.changePopulation(-1)
          super.terrorizeTown()
        }
    }
}