import UIKit

//which data could be nil

//struct Person{
//    let firstName: String
//    let lastName: String
//    let middleName: String?
//
//    func printFullName(){
//        let middle = middleName ?? ""
//        print(firstName + " " + middle + " " + lastName)
//    }
//}
//
//var personA = Person(firstName: "Ana", lastName: "Mih", middleName: nil)
//var personB = Person(firstName: "John", lastName: "Smith", middleName: "Larry")
//
//personA.printFullName()
//personB.printFullName()

class Person{
    let firstName: String
    let lastName: String
    let middleName: String?
    let spouse: Person?
    
    init(firstName: String, lastName: String, middleName: String?, spouse: Person?){
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.spouse = spouse
    }
    
    func getSpousesName() -> String {
        let spouseInfo = spouse?.firstName ?? "\(firstName) does not have a spouse."
        return spouseInfo
    } //izbegavati self kad ne treba
}

var personF = Person(firstName: "Jana", lastName: "Peric", middleName: nil, spouse: nil)
var personM = Person(firstName: "Pera", lastName: "Peric" , middleName: "Mitar" , spouse: personF)

print("M: ", personM.getSpousesName())
print("F: ", personF.getSpousesName())


//implicitly unwrapped optionals - you are sure that your variable will be of some type


