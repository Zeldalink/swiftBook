//
//  Town.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/17/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//

import Foundation


struct Town {
    var population = 5422
    var numberOfStoplights = 4
    func printTownDescription(){
      print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    mutating func changePopulation(amount: Int){
      population += amount
    }
}

