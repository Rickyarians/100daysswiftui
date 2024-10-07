import UIKit

// how to store turth with booleans

let filename = "paris.jpg"
print(filename.hasSuffix((".jpg")))

let gameOver: Bool = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false

isAuthenticated = !isAuthenticated

isAuthenticated = !isAuthenticated


// join strings


let people = "Haters"
let action = "hate"

let lyric = people + " gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5"

// string interpolation

let quote = "Then he tapped a sign saying \"Believe\" and walked away "

let name = "Ricky"
let age = 28

let message = "Hello my name is \(name) and i'm \(age) years old"


let number = 11
let missionMessage = "Appolo " + String(number) + " landed on the moon"
let missionMessage1 = "Appolo \(number) landed on the moon"


print("5 * 5 is \(5*5)")
