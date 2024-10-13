import UIKit

var greeting = "Hello, playground"


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great in \(os).")
}


for i in 1...10 {
    print("5 x \(i) is \(5 * i)")
}


for i in 1...10 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("      \(j) x \(i) is \(j * i)")
    }
    print()
}


for i in 2...5 {
    print(i)
}

for _ in 1...5 {
    print("kocak")
}


var kocak = ["satu", "dua", "tiga"]

print(kocak[1...2])


// while lopp

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast Off")

let id = Int.random(in: 1...50)
let amount = Double.random(in: 0...1)

var kocakgaming = Int.random(in: 1...5)

while kocakgaming > 0 {
    print("\(kocakgaming)")
    kocakgaming -= 1
}


var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    print("kocak")
    if itemsSold.isMultiple(of: 10000) {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number: Int = 10
while number > 0 {
    number -= 2
    if number.isMultiple(of: 2) {
        print("\(number) is an even number.")
    }
}

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

// continue and break loop


let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("found picture : \(filename)")
}

var kocakangka = 1
repeat {
    print("Fetching updates")
    kocakangka += 1
} while kocakangka < 10

var password = "1"
while true {
    password += "1"
    if password == "11111" {
        print("That's a terrible password.")
    }
    break
}

print("That's a terrible password.dd")

for i in 1..<10 {
    if i == 10 {
        print("Found number 10!")
    }
}
for person in ["Taylor", "Justin", "Adele"] {
    print("Hello, \(person)!")
}
var counter: Int = 0
while counter < 100 {
    counter += 10
    if counter.isMultiple(of: 10) {
        print("Matching number found")
    }
}


for i in 1...100 {
    switch i {
    case let x where x.isMultiple(of: 3) && x.isMultiple(of: 5):
        print("\(x) is FizzBuzz")
    case let x where x.isMultiple(of: 3):
        print("\(x) is Fizz")
    case let x where x.isMultiple(of: 5):
        print("\(x) is Buzz")
    default:
        print("\(i)")
    }
}
