import UIKit

var greeting = "Hello, playground"

// if switch operator

if true {
    print("do something")
}

let score: Int = 86

if score > 80 {
    print("great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we dont need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test")
} else {
    print("hahaha")
}


if age >= 18 {
    print("You're eligible to vote")
}


let ourName = "Aickyhjhjhj"
let friendName = "Ashraf"

if ourName.count < friendName.count {
    print("It's \(ourName) vs \(friendName)")
}

if ourName.count > friendName.count {
    print("It's \(ourName) vs \(friendName) dsds")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
    
}

print(numbers)


let country = "Canada"

if country != "Australia" {
    print("G'day!")
}

var username = "taylorswift13"

if username.isEmpty == true {
    username = "Anonymous"
}

print(username)



// multiple condition
let ageUser = 17

if ageUser >= 18 {
    print("you can vote in the next election")
} else if ageUser == 17 {
    print("you can vote in the next election 17")
}
else {
    print("Sorry, you're too young to vote.")
}


let temp = 25

if temp > 20 && temp < 30 {
    print("it's  a nice day")
}

let userAge2 = 14
let hasParentalConsent = true

if age >= 8 || hasParentalConsent == true {
    print("you can buy the game")
}


enum TransportOption {
    case airplane, helicopter, bicycle, car, ecooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("let's fly")
}


// switch

enum Weather {
    case sun, rain, wind, snow, unknown, haha
}

var forecast = Weather.haha

switch forecast {
case .rain:
    print("rain")
case .sun:
    print("sun")
case .wind:
    print("wind")
case .snow:
    print("snow")
case .unknown:
    print("unknown")
default:
    print("default")
}


// ternary condition operator

let ageLast = 18
let canVote = ageLast >= 18 ? "Yes" : "No"
print(canVote)





