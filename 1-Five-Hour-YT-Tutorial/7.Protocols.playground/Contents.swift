import UIKit

//protocol Number {
//    var floatValue: Float { get }
//}
//
//extension Float: Number {
//    var floatValue: Float {
//        return self
//    }
//}
//
//extension Int: Number {
//    var floatValue: Float {
//        return Float(self)
//    }
//}
//
//extension Double: Number {
//    var floatValue: Float {
//        return Float(self)
//    }
//}
//
//func +(valueA: Number, valueB: Number) -> Float {
//    return valueA.floatValue + valueB.floatValue
//}
//
//func -(valueA: Number, valueB: Number) -> Float {
//    return valueA.floatValue - valueB.floatValue
//}
//
//func *(valueA: Number, valueB: Number) -> Float {
//    return valueA.floatValue * valueB.floatValue
//}
//
//func /(valueA: Number, valueB: Number) -> Float {
//    return valueA.floatValue / valueB.floatValue
//}
//
//let x: Int = 10
//let y: Double = 2.2015
//let z: Float = 5.1
//print (x + y/z)


//Quiz generator, classes and structs using protocols
//MARK: Classes

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        //the difference between arc4random and other random f-ons
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

class Answer {}

// must implement both generateRandomAnswer and ...Question
class Jeopardy : AnswerGenerator {
    func generateRandomAnswer() -> Answer {
        let a = Answer()
        return a
    }
    
    func generateRandomQuestion() -> Question {
        let q = Question(type: .trueFalse, query: "Is this ok?", answer: "Yes")
        return q
    }
}

//MARK: Enums

enum QuestionType: String {
    case trueFalse = "The sky is blue."
    case multipleChoice = "What is the weather like today: Sunny, Windy or Rainy?"
    case shortAnswer = "What is the capital of Serbia?"
    case essay = "Plants in 50 words or less."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True."
    case multipleChoice = "Sunny. Windy."
    case shortAnswer = "Belgrade"
    case essay = "Plants are mostly green. They are good."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

//MARK: Protocols

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

protocol AnswerGenerator: QuestionGenerator {
    func generateRandomAnswer() -> Answer
}


