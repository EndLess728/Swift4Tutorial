//Generics in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Swift’s Array and Dictionary types are both generic collections
//Swap 2 integers
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
//T = placeholder type name
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var string1 = "hello"
var string2 = "world"
swapTwoValues(&string1, &string2)
print("string1 is now \(string1), and string2 is now \(string2)")
//Define Stack struct with type "Element"
struct Stack<Element> {
    var items = [Element]()
     //mutating => because they need to modify/mutate the structure’s items array
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element? {
        return items.count == 0 ? nil : items.removeLast()
//        return items.removeLast()
    }
}

var integerStack = Stack<Int>()
integerStack.push(1)
integerStack.push(2)
integerStack.push(3)
integerStack.push(4)
print("integerStack = \(integerStack)")
integerStack.pop()
print("integerStack = \(integerStack)")
//Type Constraint => type parameter’s name + type parameter list
//Equatable => it is guaranteed to support the equal to operator
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let intIndex = findIndex(of: 10, in: [10, 11, 12])
let stringIndex = findIndex(of: "Hoang", in: ["Alex", "Peter", "Mary"])


