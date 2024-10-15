//import UIKit
//
//var greeting = "Hello, playground"

// add parameter to our function
import Foundation

func pintTimesTable(for number: Int = 19, end: Int = 2) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

pintTimesTable()
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)


// handle errors in function

enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

//checkPassword("12345")

do {
    try checkPassword("12345")
} catch let err {
    print("kocak \(err)")
}

//do {
//    let result = try checkPassword("12345")
//    print("result \(result)")
//} catch PasswordError.short {
//    print("error ")
//}


//do {
//    let result = try checkPassword("12345")
//    print("result \(result)")
//} catch {
//    print("error \(error)")
//}



//enum BookErrors: Error {
//    case tooFewPages
//    case tooManyPages
//}
//func writeBook(title: String, pages: Int) throws {
//    switch pages {
//    case 0...50:
//        throw BookErrors.tooFewPages
//    case 51...400:
//        print("Perfect! I'm going to write \(title)...")
//    default:
//        throw BookErrors.tooManyPages
//    }
//}

//
//enum ArrayError: Error {
//    case negateIndex
//}
//func readItem(_ index: Int, from array: [String]) -> String {
//    if index < 0 {
//        throw ArrayError.negateIndex
//    }
//    return array[index]
//}


enum CatProblems: Error {
    case notACat
    case unfriendly
}
func strokeCat(_ name: String) throws {
    if name == "Mr Bitey" {
        throw CatProblems.unfriendly
    } else if name == "Lassie" {
        throw CatProblems.notACat
    } else {
        print("You stroked \(name).")
    }
}

do {
    try strokeCat("Mr Bitey")
} catch let error {
    print(error)
}



enum functionCheckpointFourError: Error {
    case outOfBonds
}


func functionCheckpointFour(_ number: Int) throws -> Int {
    if number < 0 || number > 1000 {throw functionCheckpointFourError.outOfBonds}
    
    let result =  sqrt(Double(number))
    return Int(result)
}

do {
    let result = try functionCheckpointFour(100)
    print(result)
} catch let error {
    print(error)
}



//let result = try! checkPassword("12345")
//print(result)
