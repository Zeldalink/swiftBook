//
//  main.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/17/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//


var myTown = Town()
myTown.changePopulation(500)
//myTown.printTownDescription()
//let gm = Monster()
//gm.town = myTown
//gm.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)
let z1 = Zombie()
z1.walksWithLimp = false
let z2 = z1
z2.walksWithLimp = true
print("z1 walks with limp? \(z1.walksWithLimp); z2 walks with limp? \(z2.walksWithLimp)")