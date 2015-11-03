//: Playground - noun: a place where people can play

import Cocoa

var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

if population < 10000{
  message = "\(population) is a small town!"
}else if population >= 10000 && population < 50000{
    message = "\(population) is a medium town"
}else if population <= 60000{
 message = "\(population) is big but it's no very big "
}else{
    message = "\(population) is pretty big"
}

//Ternary Operator
//message = population < 10000 ? "\(population) is a small town" : "\(population) is pretty big"

println(message)

if !hasPostOffice{
  println("Where do we buy stamps")
}