//Initialization in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Init with no parameters
/*
struct Point {
    var x, y: Double
    init() {
        x = 10
        y = 20
    }
}
var p = Point()
print("Point detail x = \(p.x), y = \(p.y)")
 */

struct Point {
    var x = 10.0
    var y = 20.0
}
var p = Point()
print("Point detail x = \(p.x), y = \(p.y)")
struct Energy {
    var calories: Float
    //fromCalories  = "argument labels"
    init(fromCalories calories: Float) {
        self.calories = calories
    }
    //1 joule = calorie
    init(fromJoules joules: Float) {
        self.calories = joules * 0.000239006
    }
//    Initializer Parameters Without Argument Labels
    init(_ joules: Float) {
        self.calories = joules * 0.000239006
    }
    
}
let energy1 = Energy(fromCalories: 110.0)
let energy2 = Energy(fromJoules:200)
let energy3 = Energy(300)
print("energy1.calories = \(energy1.calories)")
print("energy2.calories = \(energy2.calories)")
print("energy3.calories = \(energy3.calories)")

class Customer {
    var fullName: String
    var age: Int? //Optional Property Types
    init(fullName: String) {
        self.fullName = fullName
    }
    func description() {
        print(self.fullName)
    }
}
let customer = Customer(fullName: "Nguyen Duc Hoang")
customer.description()

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "no name")
    }
}
class Employee: Person {
    var staffNumber: String
    init(name: String, staffNumber: String) {
        self.staffNumber = staffNumber //call this line first
        super.init(name: name)
    }
    convenience override init(name: String) {
        self.init(name: name, staffNumber: "0000")
    }
}
//init() can return nil => Failable Initializers. Example:
enum Sex {
    case male, female, other
    init?(sexCharacter: Character) {
        switch sexCharacter {
        case "M":
            self = .male
        case "F":
            self = .female
        case "O":
            self = .other
        default:
            return nil
        }
    }
}
let sexCharacter1 = Sex(sexCharacter: "M")
let sexCharacter2 = Sex(sexCharacter: "A")
//Failable Initializers for Enumerations with Raw Values
enum Rank: String {
    case bad = "bad", medium = "medium", good = "good", excellent = "excellent"
}
let rank1 = Rank(rawValue: "excellent")
let rank2 = Rank(rawValue: "very good") //not necessary init?
//Setting a Default Property Value with a Closure or Function

class MainView:UIView {
    var leftLabel:UILabel = {
        let label = UILabel()
        label.textColor = UIColor.green
        label.text = "This is an example text"
        return label
    }()
}
let mainView = MainView()
mainView.leftLabel.text














