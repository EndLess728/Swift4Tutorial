//Protocols and delegates in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Delegation
protocol ExampleDelegate {
    func method1()
    func method2()
}
class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData(){
        print("running reload data...")
        print("doing task 1...")
        delegate?.method1()
        print("doing task 2...")
        delegate?.method2()
    }
}

class ClassConformDelegate: ExampleDelegate {
    var aProperty: ExampleClass
    
    init(aProperty: ExampleClass) {
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
    //Implement delegate functions
    func method1() {
        print("ClassConformDelegate calls method1")
    }
    func method2() {
        print("ClassConformDelegate calls method2")
    }
}
let a = ClassConformDelegate(aProperty: ExampleClass())
