//: Playground - noun: a place where people can play

import Cocoa

var int: Int = 0

//for _ in 1...5 {
//    ++int
//    print(int)
//}
//
//
//for i in 1...5 {
//    ++int
//    print("int equals \(int) at iteration \(i)")
//}

//for var i = 1; i<=5; ++i{
//    ++int
//    print(int)
//}

//var i = 1
//while i < 6 {
//    ++int
//    print(int)
//    ++i
//}

//var shields = 5
//var blastersOverheating = false
//var spaceDemonsDestroyed = 0
//var blasterFireCount = 0
//
//while shields > 0 {
//    
//    if spaceDemonsDestroyed == 500{
//      print("you beat the game")
//        break
//    }
//    if blastersOverheating {
//         print("blaster are overheat! cooldown iniated.")
//         sleep(5)
//        print("blaster ready to fire")
//        sleep(1)
//        blastersOverheating = false
//        blasterFireCount = 0
//    }
//    
//    if blasterFireCount > 100 {
//        blastersOverheating = true
//        continue
//    }
//    //Fire blasters!
//    print("fire blasters")
//    
//    ++blasterFireCount
//    ++spaceDemonsDestroyed
//}

//chanllenge

var contador : Int = 0
var repeticion : Int = 0
while contador <= 100{
print(contador)
    contador = contador + 2
    ++repeticion

}

if repeticion > 5{
    print("si hizo más de 5 veces")
}