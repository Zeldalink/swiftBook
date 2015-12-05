//
//  Town.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/17/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//
//Propiedades de las variables, puedes leerse y escribirse
// computer propierties es mejor porque es un getter an optional setter

import Foundation


struct Town {
    static let region = "South"
    var population: Int = 5442{
    
        didSet(oldpopulation){
            print("The population has changed to \(population) from \(oldpopulation) ")
        }
    }
    var numberOfStoplights = 4
    
    enum Size: String{
        case Small = "Small"
        case Medium = "Medium"
        case Large = "Large"
    }
    
//    lazy var townSize: Size = {
//    precondition(self.population >= 0, "Town cannot have negative population.")
//        switch self.population{
//        case 0...10000:
//            return Size.Small
//        case 10001...100000:
//            return Size.Medium
//        default:
//            return Size.Large
//        }
//    }()
    
     var townSize: Size {
        
        get{
            precondition(self.population >= 0, "Town cannot have negative population.")
            switch self.population{
            case 0...10000:
                return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    
    func printTownDescription(){
      print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    mutating func changePopulation(amount: Int){
        population += amount
    }
}

