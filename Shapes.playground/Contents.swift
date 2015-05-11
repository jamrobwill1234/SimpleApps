//: Playground - noun: a place where people can play

import UIKit


enum ShapeType : Int {
        
        case Triangle = 3
        case Rectangle = 4
        case Pentagon = 5
        case Hexagon = 6
        case Septagon = 7
        case Octogon = 8
        
    }
// 1. implicitly declared optional (!) I plan on setting a value before it is used 2. question mark is an optional (?) may or may not have a value
    
class Shape {
    
    var sides: Int!
    
    var fillColor: UIColor?
    var strokeColor: UIColor?
    
// init is how you intialize that class object
// init(type: ShapeType) is a custom init
    
    init(type: ShapeType) {
// Becuase its type specific we can take away the shapetype from each one .rectangle and .triangle
        
        sides = type.rawValue

// replaced the whole switch type
//        switch type {
//
//        case .Rectangle : sides = 3
//        case .Triangle : sides = 4
//        case .Pentagon : sides = 5
//        case .Hexagon : sides = 6
//        case .Septagon : sides = 7
//        case .Octogon : sides = 8
//
        
        
    }
//  You can do this that passes a sidecount and set it up that way
//    convenience init(sideCount: Int) {
//        sides = sideCount
//        
////var triangle1 = Shape()
    }


// square is a reference point how you know to access that reference point
//
var square1 = Shape(type: .Rectangle)

var suqarepixels = 4 * square1.sides!

var triangle1 = Shape(type: .Triangle)

var trianglepixels = 4 * triangle1.sides!

//TAKEAWAY- class Shape , properties for class, cutom intializer to set up class, creating object w CI

//    var num1: Int?
//    var num2: Int?
//
//num1 = 4
//
//    if num1 != nil { num1! }
//    if num2 != nil { num2! }
//
//unwrapping ?????? Have no idea whats going on ASKJO

class Mouth {
    var lipsColor: UIColor!
    var teethCount: Int!
// if its always going to have a value go ahead and set it to the value
    var badBreeath: Bool = false
    var fullOfFood: Bool = false
    
    init(teeth: Int, lips: UIColor) {
        teethCount = teeth
        lipsColor = lips
        
        
    }
    func chewFood(foor: AnyObject) {
        // chew 3 times then swallow
    
    }
    func yawn() {
}

//create a playground
//Make a Class BodyPArt
//Make 20 classes that are Body Parts
//Each class will have 3 properties (eyeColor: UIColor, teeth, Int)
//Each class will have 3 methods (Chew(), sprain(), etc
//At least 15 methods need to be called from another BodyPart 
//60 methods 15 of those 60 need to be called from another bodypart Ex: Body telling your leg lift, Hand telling fingers to curl
//At least 10 properties need to be other BodyPArts Ex: If face has property of mouth and mouth is a body part the mouth is a property of another body part
//class Face
//var mouth: Mouth! 

//class BodyPArt

//class Mouth: BodyPArt!

//class Face: BodyPart!


    class BodyPart {












        

