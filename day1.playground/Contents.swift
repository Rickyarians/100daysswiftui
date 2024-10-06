import UIKit

var greeting = "Hello, playground"


let name = "Ricky Ariansyah"
let constant = 3.14
var data = 10
var result1 = constant + Double(data)

print(result1, terminator: "")

// dengan tipe data

let namaku : String = "ricky namaku"
print(namaku, terminator: "")

// strings
let actor = "Denzel Washingtopn"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let qoute = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life on an
Apple engineer
"""

// count string

// menghitung total huruf
print(actor.count)

// print
print(result)

// membuat kapital
print(actor.uppercased())

// cak apakah kosong
print(actor.isEmpty)

// index pertama
print(actor.startIndex)
print(actor.lastIndex(of: "e"))
print(movie.hasPrefix("a day"))

print(actor[actor.index(actor.startIndex, offsetBy: 2)])


// whole number

let score :Int = 10
let score1 = 1000_000_000

print(score1)

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore =  score * 2
let squearedScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 9))


// Float or decimal


let dscimalNumber : Double = 3.14

print(Double(10) * dscimalNumber)
print(type(of: dscimalNumber))
print(String(describing : type(of: dscimalNumber)) == "Double")
