//: Playground - noun: a place where people can play

import Cocoa
// Para crear un dictionario se tiene la llave y valor
var dict1: Dictionary<String,Double> = [:]
var dict2 = Dictionary<String,Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
// aqui guarda el anterior y hace un update del valor en el diccionario
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"]{
  print("Old rating: \(lastRating); current rating \(currentRating)")
}

// agregando valores
movieRatings["The Cabinet of Dr. Caligari"] = 5
//quitar valores
//movieRatings.removeValueForKey("Dark City")
movieRatings["Dark City"] = nil
//Loop en dictionario
for (key, value) in movieRatings{
  print("The movie \(key) was rated \(value)")
}

for movie in movieRatings{
    print("User has rated \(movie)")
}

let album = ["Diet Roast Beef" : 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleanin Service": 187,
             "Track 4": 221]
// crear un array con datos del diccionario

let watchedMovies = Array(movieRatings.keys)

//Silver Challenge
var states=["Tlaxcala":[951790, 2122,21222, 653443, 67898,777] ,
            "Morelos": [2344,55534,3444,33444,3444,443,344],
            "Yucatan": [4444,3444,333445,56767,5666,6656,6]]



