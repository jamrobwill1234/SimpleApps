//: Playground - noun: a place where people can play

import UIKit

// simple changeable variable of type String
var str = "Hello, playground"

var myFirstName = "James"

enum AgeGroups : Int {
    case Baby = 0
    case Child = 3
    case Teenager = 13
    case Adult = 18
}

// a variable with type AgeGroup
var myAgeGroup = AgeGroups.Adult

println(myAgeGroup.hashValue)
println(myAgeGroup.rawValue)

// a variable with type AgeGroup
var yourAgeGroup = AgeGroups.Teenager

println(yourAgeGroup.hashValue)
println(yourAgeGroup.rawValue)

// exhaustive switch
switch myAgeGroup {
case .Adult :println("I am an adult")
case .Baby :println("I am a baby")
case .Child :println("I am a child")
case .Teenager :println("I am a teenagerr with a rebel side")
    
}

var peeps = ["Jo","Tim","Brit"]
// get item at index 0
peeps [0]
// do not try to access an item outside of the Array quickest way to make your app crash (remember 0,1,2)
// peeps [3]

 //loop allows us to run it against each item in the array (so first jo then tim then Brit)

for peep in peeps {
    
    println(peep)
// do not remove items from an Array within the loop on the Array
//Example peeps.removeAtIndex(0) 


}

// interacting through 0to one less than peeps 
for index in 0..<peeps.count {
    
    println(index)
    println(peeps[index])
    
}
//iterating through 0 to 5
for i in 0...5 {

}
// An array does not matter the order it is a collection of multiple value where the order does not matter
// An dictionary is a collection of key : value paira (like having a collection of varaibles)

var myProfile = [
    
    "name" : "James",
    "age" : "24",
    "gender" : "male",
]

// get the value for key "name"
myProfile["name"]

// the first value is key 2nd is value EX: key is the age value is 24
for (key,value) in myProfile {
    
    println("\(key) = \(value)")
}
//Example
var points = [
    "Shannon" : "400000",
    "Parker" : "20000",
    "Kyle" : "2100000",
    "Chris" : "20000000000000000",
    "Aimee" : "3000000"
]
for (name,total) in points {
    
    println("\(name) has \(total)")
    
}

// graphing
for num in 0...100 {

    num % 5
    
    // to help figure out with math forulas and algroythms

}



















