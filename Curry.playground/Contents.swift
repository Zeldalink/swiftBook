//: Playground - noun: a place where people can play

import Cocoa

func greetName(greeting: String, name: String) -> String{
  return "\(greeting) \(name)"
}

let personalGreeting = greetName("Hello, ", name: "Matt")
print(personalGreeting)

func greetingForName(greeting: String) -> (String) ->  String{
    func greet(name: String) -> String{
      return "\(greeting)"
    }
    return greet
}

let greeterFunction = greetingForName("Hello, ")
let greeting = greeterFunction("Matt")
print(greeting)

func greeting(greeting: String)(name: String) -> String{
  return "\(greeting) \(name)"
}

let friendlyGreeting = greeting("Hello, ")
let newGreeting = friendlyGreeting(name: "Matt")
print(newGreeting)

struct Person{
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeName(fn: String, ln: String){
        firstName = fn
        lastName = ln
    }

}

var p = Person()
let changer = Person.changeName
changer(&p)("john",ln: "Gallagher")
print(p.firstName)