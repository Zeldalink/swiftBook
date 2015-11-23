//
//  main.swift
//  MonsterTown
//
//  Created by Xochitl Perez on 11/17/15.
//  Copyright © 2015 Xochitl Perez. All rights reserved.
//
//si vas a pasar el tipo de valor usar una estructura, porque pasa el valor de la estructura o copiado dentro del argumento de una funcion
// si no quieres escribir herencia haces una estructura ya que no permite la herencia
// si quieres empezar por algo sencillo y abarcar simples valores entonces considera una estrutura, siempre puede cambiar un tipo de clase de después
// y para otros casos usa clases

var myTown = Town()
myTown.changePopulation(0)
//myTown.printTownDescription()
//let gm = Monster()
//gm.town = myTown
//gm.terrorizeTown()

//let fredTheZombie = Zombie()
//fredTheZombie.town = myTown
//fredTheZombie.terrorizeTown()
//fredTheZombie.town?.printTownDescription()
//fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)
//let z1 = Zombie()
//z1.walksWithLimp = false
//let z2 = z1
//z2.walksWithLimp = true
//print("z1 walks with limp? \(z1.walksWithLimp); z2 walks with limp? \(z2.walksWithLimp)")

let xochVampire = Vampire()
xochVampire.town = myTown
xochVampire.terrorizeTown()
xochVampire.terrorizeTown()
xochVampire.town?.printTownDescription()
