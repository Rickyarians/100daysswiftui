import Foundation

protocol Vehicle {
    var name: String {get}
    var currentPassenger: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int) throws -> String
}


struct Car: Vehicle {
    var name: String = "Car"
    var currentPassenger: Int = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) throws -> String {
        return "driving"
    }
    
    func openSunroof() {
        print("its a nice day1")
    }
}


struct Bicycle: Vehicle {
    var name: String = "Bicycle"
    var currentPassenger: Int = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 30
    }
    
    func travel(distance: Int) throws -> String {
        return "driving"
    }
    
    func openSunroof() {
        print("its a nice day1")
    }
}


var mazda = Car()

mazda.estimateTime(for: 10)


func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("test")
    } else {
        print("kocak")
    }
}

func travelCount(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimateTime = vehicle.estimateTime(for: distance)
        print("\(vehicle.name) : \(estimateTime)")
    }
}


var carr = Car()
commute(distance: 100, using: carr)


var bike = Bicycle()
commute(distance: 100, using: carr)


travelCount(using: [carr, bike], distance: 150)


// opaque return types

//
//func getRandomNumber() -> Int {
//    1
//}
//
//func getRandomNumber1() -> Int {
//    1
//}
//print(getRandomNumber() == getRandomNumber1())


func getRandomNumberSatu() -> some Equatable {
    Int.random(in: 1...6)
}


func getRandomNumberDua() -> some Equatable {
    Bool.random()
}

print(getRandomNumberSatu() == getRandomNumberSatu())


var quote: String = "    kocak, banget     "

print(quote.trimmingCharacters(in: .whitespacesAndNewlines))

//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
//

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimmed = quote.trimmed()


// create and use protocol extensions


extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}



protocol Person {
    var name : String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}


struct Employee: Person {
    let name: String
}

//  no need to add function sayHello even in protocol its required

let taylor = Employee(name: "Taylor Swift")

taylor.sayHello()


// challange 8

protocol Building {
    var rooms: Int {get}
    var price: Int {get}
    var agent: String {get set}
    func salesSummary()
}


struct Home : Building {
    var rooms : Int
    var price: Int
    var agent : String
    
    
    func salesSummary() {
        print("\(rooms) - \(price) \(agent)")
    }
}


extension Home {
    func printaddedExt() {
        print("test")
    }
}

let housesss = Home(rooms: 10, price:10000, agent: "kocak")

housesss.printaddedExt()
housesss.salesSummary()

