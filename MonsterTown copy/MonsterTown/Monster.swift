//
//  Monster.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/18/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var spookyNoise: String{
    
        return "Grrr"
    }
    
    var town: Town? = Town()
    var name = "Monster"
    var victimPool: Int {
        get{
        
            return town?.population ?? 0
        }
        
        set(newVictimPool){
        
            town?.population = newVictimPool
        }
        
    }
    
    func terrorizeTown(){
        if let _ = town{
          print("\(name) is terrorizzing a town")
        }else{
          print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}