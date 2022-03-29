import UIKit

//MARK: Class example

//class Vehicle{
//    var tires = 4
//    var model: String?
//    var make: String?
//    var currentSpeed: Double = 0
//
//    func drive(speedIncrese: Double){
//        currentSpeed += speedIncrese * 2
//        print("Driving...")
//    }
//
//    func brake(){
//        print("Brake")
//    }
//
//    func modifyModel(){
//        model = "default"
//    }
//}

//MARK: 1st Example

//let BMW = Vehicle()
//BMW.model = "328i"
//
////NOTE: you can change let instances properties because you the value is passed by reference
//print(  BMW.model)
//BMW.modifyModel()
//print(BMW.model)

//MARK: Inheritance

//class SportsCar: Vehicle{
//    override init() {
//        super.init()
//        self.make = "BMW"
//        self.model = "3 series"
//    }
//    override func drive(speedIncrese: Double) {
//        currentSpeed += speedIncrese * 3
//        print ("Driving fast...")
//    }
//}
//
//var sk = SportsCar()
//sk.drive(speedIncrese: 50)
//sk.brake()

//MARK: Polymorphism

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double){
    }
}

class Triangle: Shape{
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB / 2
    }
}
     
class Rectangle: Shape{
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}








