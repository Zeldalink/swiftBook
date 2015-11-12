//: Playground - noun: a place where people can play

import Cocoa

//Set es una coleccion desornedad de distintas instancias.no permite valores repetidos, asume que los valores son unicos.

//var groceryBag = Set<String>()
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")
//
//for food in groceryBag {
// print(food)
//}
var groceryBag = Set(["Apples","Oranges", "Pineapple"])
for food in groceryBag {
 print(food)
}
let hasBananas = groceryBag.contains("Bananas")
//Para unir dos sets
let friendsGroceryBag = Set(["Banana", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
//para saber que elementos están repetidos
let roommatesGroceryBag = Set(["Apples", "Bananas","Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersect(roommatesGroceryBag)
//para no repetir elementos
let yourSecondBag = Set(["Berries","Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)

//challenge
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])
myCities.elementsEqual(yourCities)
//challenge
groceryBag.union(friendsGroceryBag).intersect(roommatesGroceryBag)


