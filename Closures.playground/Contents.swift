//: Playground - noun: a place where people can play

import Cocoa

//Closure es la ejecuion de una parte del código que se puede utilizar en un contexto, su sintaxis es {(parametros) -> tipo de dato que regresa in cuerpo de la funcion}
var volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(i: Int, j:Int) -> Bool{
  return i < j
}

let volunteersSorted = volunteerCounts.sort(sortAscending)
let volunteersSorted2 = volunteerCounts.sort({(i : Int, j: Int) -> Bool in return i < j})
print(volunteersSorted2)
//sintaxis más pequeña, el $0 se refiere al primer argumento $1 al segundo
let volunteersSorted3 = volunteerCounts.sort({$0 < $1})
print(volunteersSorted3)

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(lightsToAdd: Int, tolights: Int) -> Int {
//        return tolights + lightsToAdd
//    }
//  return buildRoads
//}
//
//var stopLights = 4
//let townPlan = makeTownGrand()
//stopLights = townPlan(4,stopLights)
//print("Know has \(stopLights) stoplights")

func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)?{
    if condition(budget){
        func buildRoads(lightsToAdd: Int, tolights: Int) -> Int {
          return tolights + lightsToAdd
        }
        return buildRoads
    }else{
      return nil
    }
}

func evaluateBuget(budget: Int) -> Bool {
  return budget > 10000
}

var stopLights = 4
if let townPlan = makeTownGrand(1000, condition: evaluateBuget) {
  stopLights = townPlan(4, stopLights)
}


if let newTownPlan = makeTownGrand(10500, condition: evaluateBuget){
  stopLights = newTownPlan(4, stopLights)
}

print("Know has \(stopLights) stoplights")

//Capture Values
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
  var totalGrowth = 0
    func growthTracker () -> Int {
      totalGrowth += growth
      return totalGrowth
    }
    return growthTracker
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)
growBy500()
growBy500()
growBy500()

currentPopulation += growBy500()

//closure are reference types

let anotherGrowBy500 = growBy500
anotherGrowBy500()

var someOtherPopulation = 4061981
let growBy10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growBy10000()
currentPopulation

// functional programming
// las funciones pueden pasar como argumentos a otras funciones y puedes ser guardadas como variables y puden ser de cualquier tipo
// las funciones no tienen efectos, lo mismo que entra, lo mismo que sale
//inmutabilidad 
// tipo de dato fuertemente esteorotipado
// funciones de tipo alto de nivel, toma la ultima funcion como salida
// map es una funcion para cambiar el contenido de los arrays

let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map{
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

//filter closure expression que lo toma como argumento 

let bigProjectiones = projectedPopulations.filter{
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjectiones

// reduce es reducir los valores del array

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}

totalProjection
//challenge gold
let prueba = projectedPopulations.reduce(0){$0 + $1}
prueba

