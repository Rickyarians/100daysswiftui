// structs
// custom data type


struct Album {
    var title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist)")
    }
    
    mutating func updateTitle() {
        title = "hehe"
    }
}


var red = Album(title: "Red", artist: "Taylor Swift", year: 2012)


print(red.title)
red.printSummary()

red.title = "kocak"

print(red.title)

red.updateTitle()

print(red.title)


struct Employee {
    var name: String = "kocak"
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("im going vacation")
            print("days remaining: \(vacationRemaining)")
        } else {
            print("arent enough")
        }
    }
}


var archer = Employee(name: "Archer Kocak", vacationRemaining: 10)

archer.takeVacation(days: 5)
print(archer.vacationRemaining)


struct RubiksCube {
    var size = 3
}
struct Book {
    var title: String
    var author = "Unknown"
    var pageCount = 0
}

struct Player {
    var name: String
    var position: String
}
let harry = Player(name: "Harry Kane", position: "Forward")
print(harry.name)


// white
//struct Cup {
//    var size: Int
//    var color = White
//}

// cannot convert diff data types
//struct Tree {
//    var height: Int
//    mutating func grow() {
//        height *= 1.001
//    }
//}

// let constant
//struct Car {
//    let mileage: Int
//    mutating func drive(distance: Int) {
//        mileage += distance
//    }
//}


struct Book1 {
    var totalPages: Int
    var pagesLeftToRead = 0
    mutating func read(pages: Int) {
        if pages < pagesLeftToRead {
            pagesLeftToRead -= pages
        } else {
            pagesLeftToRead = 0
            print("I'm done!")
        }
    }
}


//struct Switch {
//    var isOn: Bool
//    mutating func toggle {
//        if isOn {
//            isOn = false
//        } else {
//            isOn = true
//        }
//    }
//}


struct Delorean {
    var speed = 0
    mutating func accelerate() {
        speed += 1
        if speed > 3 {
            travelThroughTime()
        }
    }
    func travelThroughTime() {
        print("Where we're going we don't need roads.")
    }
}

var delorancall = Delorean(speed: 10)
print(delorancall.speed)
delorancall.accelerate()
print(delorancall.speed)


//struct Singer {
//    var name: String
//    var bankBalance: Double
//    mutating func goOnTour(venues: Int) {
//        print("Come and see \(name) live on stage!")
//        bankBalance += venues * 100_000
//    }
//} data type


struct Bicycle {
    var currentGear: Int
    mutating func changeGear(to newGear: Int) {
        currentGear = newGear
        print("I'm now in gear \(currentGear).")
    }
}

var bicy = Bicycle(currentGear: 2)
print(bicy.currentGear)
bicy.changeGear(to: 10)
print(bicy.currentGear)



// compute property cvalue

struct EmployeeNew {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    
//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
//    
    
    var vacationRemainingCompute: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

print("-----")
var archerAgain = EmployeeNew(name: "archer again", vacationAllocated: 14)
archerAgain.vacationTaken += 3
print(archerAgain.vacationRemainingCompute)

archerAgain.vacationRemainingCompute = 4

print(archerAgain.vacationRemainingCompute)



// property observers

struct Game {
    var score: Int = 10 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()

game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts: [String] = [] {
        willSet {
            print("current Value is : \(contacts)")
            print("new value will be \(newValue)")
        }
        
        didSet {
            print("there are now \(contacts.count) contacts")
            print("old values was : \(oldValue)")
        }
    }
}


var AppTest = App()


AppTest.contacts = ["kocak"]
AppTest.contacts.append("lagi")
AppTest.contacts.append("hiya")


// cutom initializer


struct PlayerNew {
    let name : String
    let number:  Int
    
    
    init(name: String) {
        self.name = name
        number = 10
    }
}

let kocakPlayer = PlayerNew(name: "kocak")


print(kocakPlayer.number)


let kocakGaming = {(kocakNumber: Int) -> Int in
    return kocakNumber * 2
}

print(kocakGaming(10))
