//: Playground - noun: a place where people can play

import Cocoa
//funcion es un código específico para realizar algo especifico. Algunos reciben argumentos,algunos regresan un valor terminado su trabajo

func printGreeting(){
 print("Hello, playground")
}
printGreeting()
//func printPersonalGreeting(name: String){
//print("hello \(name),welcome to your playground")
//}
//printPersonalGreeting("Xochitl")

//func divisionDescription(num: Double, den: Double){
// print("\(num) divided by \(den) equals \(num / den)")
//}
//divisionDescription(9.0, den: 3.0)
//
// nombre de parametros explicitos
//func divisionDescription(forNumberator num : Double, andDenominator den:Double){
//    print("\(num) divided by \(den) equals  \(num / den)")
//}
//divisionDescription(forNumberator: 9.0, andDenominator: 3.0)

//Variadic parameters

func printPersonalGreetings(names: String...){
    for name in names {
      print("hello \(name), welcome to playground")
    }
}
printPersonalGreetings("Alex", "Chris", "Drew", "Pat")

// default parameter values 
//
//func divisionDescription(numerator: Double, denominator: Double, punctuation: String = "."){
//   print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
//}
//divisionDescription(9.0, denominator: 3.0)
//divisionDescription(9.0, denominator: 3.0, punctuation: "!")

// In-out parameters
var error = "The request failed:"
func appendErrorString(errorCode: Int, inout errorString: String){
    if errorCode == 400{
     errorString += " bad request."
    }
}
appendErrorString(400, errorString: &error)
error
// returning from a fuction

func divisionDescription(numerator: Double,
    denominator: Double,
    punctuation: String = ".")-> String{
        return "\(numerator) divided by \(denominator) equals \(numerator/denominator)\(punctuation)"
}
print(divisionDescription(9.0, denominator: 3.0, punctuation: "!"))
//nested estan escondidas afuera del mundo por default y usadas por una funcion encapsulada. una funcion encapsulada puede regresar uno o mas nested funciones que puede usar en otro contexto. 
func areaOfTriangle(base: Double, height: Double) -> Double{
  let numerator = base * height
    func divide() -> Double {
      return numerator / 2
    }
    return divide()
}
areaOfTriangle(3.0, height: 5.0)

//Scope cuando esta dentro del contexto la función servira. sino no funcionaria dentro de la funcion
//Multiple Returns
func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]){
  var evens = [Int]()
  var odds = [Int]()
    for number in numbers{
      if  number % 2 == 0{
     evens.append(number)
      } else{
        odds.append(number)
        }
    }
    return (evens, odds)
}

let aBounchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortEvenOdd(aBounchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

//optional return types

func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(("Matt",nil,"Mathias"))
if let theName = middleName {
    print(theName)
}

//silver challenge
func beanSifter(groceryList: [String]) -> (beans: [String],otherGroceries: [String]){
    var beans = [String]()
    var otherGroceries = [String]()
    for item in groceryList{
        if item.hasSuffix("milk") || item.hasSuffix("apples"){
            otherGroceries.append(item)}
        else{
           beans.append(item)
        }
    }
    return(beans, otherGroceries)
}

let result = beanSifter(["green beans","milk","black beans", "pinto beans","apples"])
result.beans
result.otherGroceries