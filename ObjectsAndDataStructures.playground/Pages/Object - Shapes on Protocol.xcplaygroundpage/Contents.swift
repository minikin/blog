//: [Previous](Object%20-%20Procedural%20Shape)

import UIKit

// Object -  Shape on Protocol

typealias Point = (Double, Double)

protocol Geometryable {
  func area() -> Double
}

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

extension Square: Geometryable {
  func area() -> Double {
    return side * side
  }
}

extension Rectangle: Geometryable {
  func area() -> Double {
   return height * width
  }
}

extension Circle: Geometryable {
  func area() -> Double {
    return radius * radius * .pi
  }
}

let square = Square(topLeft: (0,0), side: 10)
let rectangle = Rectangle(topLeft: (0,0), height: 20, width: 15)
let circle = Circle(center: (0,0), radius: 25)

square.area()
rectangle.area()
circle.area()





