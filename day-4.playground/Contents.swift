import UIKit


// swift infers greeting data type to string
var greeting = "Hello, playground"

// type annotation
var playerName : String = "player"
print(playerName)
var soda : [String] = ["Coke", "Pepsi"]
var teams : [String] = [String]()

// cannot reassign no Int bcs we defined playerName as string
// playerName = 10

var albums = ["test", "test1"]
var dictUser : [String: String] = ["name": "Kocak"]
print(dictUser["name"])

var setUser: Set<String>  = Set(["blue", "red"])
print(setUser)
print(setUser.contains("BLUE".lowercased()))
var arraykosong: [String] = [String]()
arraykosong.append("test")


enum UIstyle {
    case light, dark, system
}

enum numberMapping: Int {
    case satu = 1, dua = 2, tiga = 3
}

var style = UIstyle.dark

print(numberMapping.self)

enum fruitBasket {
    case tropicak([String])
}

let kocak = fruitBasket.tropicak(["kocak"])
print(kocak)

var artist : String = ""
print(artist)
