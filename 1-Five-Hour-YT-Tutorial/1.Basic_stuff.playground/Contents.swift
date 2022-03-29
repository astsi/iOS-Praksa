import UIKit
import Darwin

//MARK: Strings

//var vs let; explicit vs implicit type def; strings
let name: String
name = "Pera"

var job = "programmer"
//string concatenation
//print (name + " the " + job)
job = "journalist"
//print (name + " the " + job)
//string interpolation
var question = "Do you know if \(name) is really a \(job)?"
//appending strings
question.append(contentsOf: "\nI would really like to know that.")
//print(question)


//MARK: Numbers

var myNum = 30+5*4/2.2
var mySquare = pow(myNum,2)
var myRoot = sqrt(myNum)
print (myNum, mySquare, myRoot)
//cast
var myInt = Int(myNum)
print (" myInt: \(myInt)")
//round, floor, ceil
print("Round: ", round(myNum))
print("Ceil: ", ceil(myNum))
print("Floor: ", floor(myNum))
//Int.min, Int.max
print(Int.min, Int.max)

//MARK: Logical Operators & Boolean

//Comparing variables: ==, <=, >=, <, >
//Logical operators: !, ||, &&
var myStatement:Bool
myNum = 10

//if-else example:
if (myNum < 50) {
    myStatement = true
} else {
    myStatement = false
}

//case example:
switch myNum {
case 10:
    print ("It's 10")
case 100:
    print("It's 100")
default:
    print(myNum)
}

//Ternary operator ?:

let firstCard = 10
let secondCard = 20

print (firstCard == secondCard ? "Equal" : "Not Equal")

//MARK: Arrays

var greetings = [String]()

greetings.append("Hi")
greetings.append("Hello")
greetings.append("Bye")
greetings.remove(at: 1)

//add later: map, reduce, filter, foreach

//MARK: Loops: repeat...while, for

var a = 1
repeat{
    a += 1
}
while a < 10
print(a)

for i in 1...10{
    print("For loop 1 to 10: ", i)
}

for i in 15..<20{
    print("Foor loop 15 to 20: ",i)
}

//MARK: Dictionaries, Sets - explore more:
//unique keys, whatever values

var airoports = ["LAX":"Los Angeles","BEG":"Belgrade"]

for(key, value) in airoports{
    print (key + " stands for: " + value + " airport.")
}

for key in airoports.keys{
    print (key)
}

for value in airoports.values{
    print (value)
}






 
