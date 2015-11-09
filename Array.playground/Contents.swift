//: Playground - noun: a place where people can play

import Cocoa

//una sintaxis
//var bucketList: Array<String>
// otra sintaxis Array
//var bucketList: [String] = ["Clim Mt. Everest"]
//aqui es una asignacion no es un array
//var bucketList = ["Clim Mt. Everest"]
//Array, agregando un valor con la funcion de append()
var bucketList = ["Clim Mt. Everest"]
bucketList.append("Fly hot air balloon to fiji")
bucketList.append("Watch the Lord of the Rings trilogy in one day")
bucketList.append("Go on walkabout")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")
bucketList.removeAtIndex(2)
bucketList
// función count es para contar cuantos elementos hay en un array
print(bucketList.count)
// para mostrar un rango dentro del array
print(bucketList[0...2])
// agregar  texto en un elemento del array
bucketList[2] += " in Australia"
print(bucketList)
//reemplezar un elemento del array
bucketList[0] = "Climb Mt. Kilimanjaro"
print(bucketList)
// Usar un loop para llenar el array con for
var bucketList2 = ["Climb Mt. Everest"]
var newItems = ["Fly hot air ballon to Fiji",
                "Watch the lord of the Rings trilogy in one day",
                "Go on a walkabout", "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"]
//for item in newItems {
// bucketList2.append(item)
//}
// otra forma es con appendContents
//bucketList2.appendContentsOf(newItems)
//otra forma es con el operador, es más conciso
bucketList2 += newItems
bucketList2.removeAtIndex(2)
print(bucketList2.count)
print(bucketList2[0...2])
bucketList2[2] = " in Australia"
bucketList2[0] = "Climb Mt. Kilimanjaro"
bucketList2
// para insertar un elemento en un indice indicado
bucketList2.insert("Toboggan across Alaska", atIndex: 2)
bucketList2

// Array Equality

var myronsList = ["Climb Mt. Kilimanjaro",
                  "Fly hot air balloon to Fiji",
                  "Toboggan across Alaska",
                  "Go on walkabout in Australia",
                  "Find a triple rainbow",
                  "Scuba dive in the Great Blue Hole"
                 ]
let equal = (bucketList2  == myronsList)

let lunches = [
"cheeseburger",
"veggie pizza",
"chicken caesar salad",
"black bean burrito",
"falafel wrap"]

//Bronze challenge

var toDoList = ["take out garbage", "pay bills", "cross off finished items"]
toDoList.isEmpty

//silver challenge
var num: Int = 2
for lista in toDoList{
    print(toDoList[num])
    --num
}

for list in toDoList.reverse(){
print(list)
}

