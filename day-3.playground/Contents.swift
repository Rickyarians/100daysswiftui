import UIKit

// how we store ordered data in arrays

var beatles = ["John", "Paul",  "Ringo", "George"]
let numbers = [4, 6, 15, 16, 23, 42 ]
var temperature = [25.3, 28.2, 26.4]

print(beatles)

// we can access value in array by index, index is integer
// if we want to akses the second data in array we can code array[1]
// yes array start from index 0

// add data to arrayv

beatles.append("ricky")
print(beatles)
// if we append array with another data types, swift will give us an error data type not allowed, only what we defined, its name type safety

// access the array example
print(beatles[3])


// another way to declare an variabel array
var scores = Array<Int>()
scores.append(10)
scores.append(40)

print(scores)
print(scores.count)

var albums = [String]()
albums.append("Album 1")
print(albums)
albums.removeAll()
print(albums)

let cities = ["Londong", "Tokyo"]
print(cities.contains("tokyo"))
print(beatles.sorted())


// dictionary

// dictionary have keys and value
let employee2 = ["Name": "Taylor Swift", "Job": "Singer", "location" : "Nashville"]

print(employee2["Name"])

print(employee2["lastName", default: "none"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]


print(olympics[2012, default: "uknown"])


var heights = [String: Int]()
heights["Yao Ming"] = 229

var archEnemies = [String: String]()

archEnemies["Batman"] = "Joker"
print(archEnemies)
archEnemies["Batman"] = "Penguin"
print(archEnemies)

// sets
// similar like array but cant add duplicate, and dont store their items in a particular order


var actors = Set([
    "Denze Washington",
    "Tom Cruise",
    "Nicolas Cage"
])

print(actors)

actors.insert("Tom Cruise")

var batmans = Set<String>()
batmans.insert("Robin")
print(batmans)
batmans.contains("Robin")


// enum
var selected = "Monday"
print(selected)
selected = "Tuesday"
print(selected)
selected = "January"
print(selected)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

enum prime {
    case one = 1, two, three, four
}

var day = Weekday.monday
print(day)
day = Weekday.friday

print(prime.two)




