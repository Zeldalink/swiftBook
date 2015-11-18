//: Playground - noun: a place where people can play

import Cocoa

//enum TextAligment {
//    case Left
//    case Right
//    case Center
//    case Justify
//}

//var alignment: TextAligment = TextAligment.Left
//var alignment = TextAligment.Left
//alignment = .Right
//if alignment == .Right{
//  print("we shoul right align text!")
//}
//switch alignment{
//case .Left:
//    print("letf aligned")
//case .Right :
//    print("right aligned")
//default:
//    print("center aligned")
//}

enum TextAlignment: Int {
    case Left    = 20
    case Right   = 30
    case Center  = 40
    case Justify = 50
}
var alignment = TextAlignment.Left
print("left has raw value \(TextAlignment.Left.rawValue)")
print("left has raw value \(TextAlignment.Right.rawValue)")
print("left has raw value \(TextAlignment.Center.rawValue)")
print("left has raw value \(TextAlignment.Justify.rawValue)")
print("left has raw value \(alignment.rawValue)")
// aqui si no cumple los valores que tiene el enum regresa ese resultado, mientras sea el valor de los enum trabaja correctamente
let myRawValue = 100

if let myAlignment = TextAlignment(rawValue: myRawValue){
 print("successfully converted \(myRawValue) into a TextAlignment")
}else{
  print("\(myRawValue) has no corresponding TextAlignment case")
}
switch alignment{
case .Left:
    print("letf aligned")
case .Right :
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}
//enum String

enum ProgrammingLanguage : String{
    case Swift      = "Swfit"
    case ObjetiveC  = "Objective-C"
    case C          = "C"
    case Cpp        = "C++"
    case Java       = "Java"
}

let myFavoriteLanguage = ProgrammingLanguage.Swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

//Methods in enum

enum LightBulb{
    case On
    case Off
    
    func surfaceTemperaturaForAmbientTemperatur(ambient: Double) -> Double{
        switch self{
        case .On:
            return ambient + 150.0
        case Off:
            return ambient
        }
    }

    mutating func toggle(){
        switch self{
            case .On:
                self = .Off
            case .Off:
                self = .On
            }
        }
}

var bulb = LightBulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperaturaForAmbientTemperatur(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")
// llama a toogle con el valor de On por eso el resultado es 77.0
bulb.toggle()
bulbTemperature = bulb.surfaceTemperaturaForAmbientTemperatur(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

//Associated Values

enum ShapeDimensions{
    // point has no associated value - it is dimesionlees
     case Point
//Square's associated value is the length of one side
    case Square(Double)
    // Rectangle's associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    case Triangle(width: Double, height: Double, hipotenusa: Double)
    
    func area() -> Double{
        switch self{
        case .Point:
            return 0
        case let .Square(side):
            precondition(side >= 0, "side canoot be negative")
            return side * side
        case let .Rectangle(width: w, height: h):
            precondition(w >= 0, "width canoot be negative")
            precondition(h >= 0, "height cannot be negative")
            return w * h
        case let .Triangle(width: w, height: h, hipotenusa: a):
            precondition(a > w, "no pueden ser más grandes")
            precondition(a >= h, "no pueden ser más grandes")
            return (w * h) / 2
        default:
            return 0
        }

    }
    
    case SquarePerimeter(Double)
    case RectanglePerimeter(width: Double, height: Double)
    case TrianglePerimeter(sideA: Double, sideB: Double, sideC: Double)
    
    func perimeter() -> Double{
        switch self{
        case let .SquarePerimeter(size):
            return size * 4
        case let .RectanglePerimeter(width: w, height: h ):
            return 2 * (w + h)
        case let .TrianglePerimeter(sideA: a, sideB: b, sideC: c):
            return a + b + c
        default:
            return 0
        
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
var triangleShape = ShapeDimensions.Triangle(width: (6.0/3), height: (8.0/3),hipotenusa: (10.0/3))
var squarePerimeter = ShapeDimensions.SquarePerimeter(5.0)
var trianglePerimeter = ShapeDimensions.TrianglePerimeter(sideA: 2.0, sideB: 5.0, sideC: 6.0)
var rectanglePerimeter = ShapeDimensions.RectanglePerimeter(width: 4.0, height: 7.0 )

print("square's area =  \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("Triangle's area = \(triangleShape.area())")
print("Square's perimeter = \(squarePerimeter.perimeter())")
print("Triangle's perimeter = \(trianglePerimeter.perimeter())")
print("Rectangle's perimeter = \(rectanglePerimeter.perimeter())")



