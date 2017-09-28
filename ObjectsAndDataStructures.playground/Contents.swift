//: Playground - noun: a place where people can play

import UIKit

// Object - Procedural Shape

typealias Point = (Double, Double)

struct Square {
  let topLeft: Point
  let side: Double
}

struct Rectangle {
  let topLeft: Point
  let height: Double
  let width: Double
}

struct Circle {
  let center: Point
  let radius: Double
}

struct Geometry {
  func area(_ shape: Any) -> Double {
      if shape is Square {
        print("Shape is Square")
        let s = shape as! Square
        return s.side * s.side
      } else if shape is Rectangle {
        print("Shape is Rectangle")
        let r = shape as! Rectangle
        return r.height * r.width
      } else if shape is Circle {
        print("Shape is Circle")
        let c = shape as! Circle
        return c.radius * c.radius * .pi
      } else {
        print("Unknow object")
        return 0
    }
  }
}

let square = Square(topLeft: (0,0), side: 10)
let rectangle = Rectangle(topLeft: (0,0), height: 20, width: 15)
let circle = Circle(center: (0,0), radius: 25)
let unknowObject = "Hey!"

let geometry = Geometry()

geometry.area(square)
geometry.area(rectangle)
geometry.area(circle)
geometry.area(unknowObject)





// Data structure
