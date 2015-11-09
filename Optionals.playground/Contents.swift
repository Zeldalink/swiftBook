//: Playground - noun: a place where people can play

import Cocoa

//optional types
//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}


//Optional Binding

//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
//if let theError = errorCodeString {
//    print(theError)
//}

//nesting optional binding
//
//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
//if let theError = errorCodeString {
//    if let errorInt = Int(theError){
//        print(errorInt)
//    }
//}

//unwrapping multiple optionals
//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
//if let theError = errorCodeString,errorInt = Int(theError) {
//        print(errorInt)
//}

//Where clauses
//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
//if let theError = errorCodeString,errorInt = Int(theError) where errorInt >= 400 {
//    print(errorInt)
//}
// unwrapped optionals es cuando se usa "!" para dar un tipo de dato en encapsulamiento forzado pero se usa si sabes que siempre tendra un valor, sino no usarlo.
//var errorCodeString: String!
//errorCodeString = "404"
//print(errorCodeString)

//Optional Chaining = provee un mecanismo para una consulta de una opcion la que determina si contiene un valor, característica importante es que permite hacer numerosos consultas en el valor de la opcion, si cada opcion contiene un valor entonces es llamado cada vez que sucede, entonces cada indentidad de consulta regresa una opcion con el tipo de dato, si la consulta regresa nil entonces regresa nil la opción

var errorCodeString: String!
errorCodeString = "404"
if let theError = errorCodeString{
    print(theError)
}
var errorCodeInt: Int?
errorCodeInt = Int(errorCodeString)?.advancedBy(100)

if let errInt = errorCodeInt{
 print("the integer error code is \(errInt).")
} else{
 print("errorCodeString was either nil or could not be converted to an integer.")
}

//Nil coalescing operator es para desagrupar el valor opcional que si contiene un valor lo regresa o regresa el valor de el siguiente valor (a o b)

let actualErrorCode = Int(errorCodeString) ?? 500
print("actualErrorCode = \(actualErrorCode)")

let error :String?
var errorSilver = "red"


var solution = errorSilver ?? error
print(solution)

