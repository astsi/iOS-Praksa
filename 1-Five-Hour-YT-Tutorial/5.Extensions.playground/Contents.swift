import UIKit

class MyClass {}

extension MyClass {
    //functionality
}

extension String {
    func reverse()-> String {
        
        var characterArray = [Character]()
        for character in self {
            characterArray.insert(character, at: 0)
        }
        return String(characterArray)
    }
}

var name = "Anastasija"
print(name.reverse())

extension Int {
    func square()-> Int {
        return self * self
    }
}

var number = 25
print(number.square())


extension Double{
    mutating func calculateArea() {
        let pi = 3.4145
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    init(radius: Double){
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
print(circle.radius)

circle.radius.calculateArea()

print(circle.radius)
