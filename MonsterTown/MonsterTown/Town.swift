//
//  Town.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/17/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation


struct Town {
    var population = 2942
    var numberOfStoplights = 4
    func printTownDescription(){
      print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    mutating func changePopulation(amount: Int){
       precondition(population > 0, "no se puede restar una poblacion en 0")
       precondition(population >= amount, "no puedes matar a más gente de lo que vive")
        population += amount
    }
}

