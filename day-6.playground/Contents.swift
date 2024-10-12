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

