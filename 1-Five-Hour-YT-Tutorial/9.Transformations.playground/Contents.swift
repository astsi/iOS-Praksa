import UIKit
import Foundation

//MARK: map - returns an array containing the results of mapping the given closure over the sequence's elements.

var cityNames = ["nis", "belgrade", "paris", "boston", "new york"]
let capitalizedCityNames =  cityNames.map { $0.capitalized }

//MARK: flat map - returns an array containing the concatenated results of calling the given transformation with each element of this sequence.

var collections = [[1,2,3], [1,5,7], [24,6,9]]

let singleCollection = collections.flatMap { $0 }
print(singleCollection)

let squareCollection = collections.flatMap { $0.map { $0 * $0 } }

//MARK: compact map - returns an array containing non-nil results of calling the given transformation with each element of this sequence.

let randomReturnedNames: [String?] = ["Steve",nil,"Bob","Larry",nil]

let validData = randomReturnedNames.compactMap{ $0 }
print(validData)

//MARK: filter - returns an array containing data that satisfy the given condition

let digits = [1, 34,51,22,8,12,100]
let evenDigits = digits.filter { $0 % 2 == 0}
print(evenDigits)

let names = ["Steve", "Glenn", "Marcus", "Sarah"]
let sNames = names.filter { $0.first == "S"}
print(sNames)

//MARK: reduce - returns the result combining the elements of hte sequence using the given closure

let values = [3.0, 4.7, 12.16, 189.9]
let sum = values.reduce(0.0,+) //adds each value from values to 0.0
print(sum)

let stringChunks = ["My name is", " Anastasija "," and I am ", "a developer."]
let sentence = stringChunks.reduce("Developer bio: ", +)

//MARK: zip - creates a sequence of pairs built out of two underlying sequences.
let nameData = ["Anna", "Peter", "Thomas"]
let badgeData = [111111,222222,333333]
let zippedResults = Array(zip(nameData, badgeData))

print(zippedResults[0].0) //prints Annas name
print(zippedResults[0].1) //prints Annas id badge



