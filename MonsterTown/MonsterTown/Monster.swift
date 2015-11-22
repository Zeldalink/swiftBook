//
//  Monster.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/18/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation

class Monster {
    var town: Town? = Town()
    var name = "Monster"
    
    func terrorizeTown(){
        if let _ = town{
          print("\(name) is terrorizzing a town")
        }else{
          print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}