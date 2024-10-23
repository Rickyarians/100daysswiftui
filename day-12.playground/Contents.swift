class Game {
    
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}


var newGame = Game()

newGame.score += 10
print(newGame.score)

// inherited

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I'm work \(hours) hours a day.")
    }
}


class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("heheheheh")
    }

}


let robert = Developer(hours: 8)
robert.work()
robert.printSummary()


// add initializer


class Vehicle {
    let isElectric: Bool
    
    init (isElectric: Bool){
        self.isElectric = isElectric
    }
}


class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool ,isConvertible:Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}


let teslaX = Car(isElectric: true, isConvertible: false)
// copy class


class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}


var user1 = User()
var user2 = user1.copy()


user2.username = "Taylor"

print(user1.username)
print(user2.username)


// deinit


class UserNew {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User  \(id): I'm Alive")
    }
    
    deinit {
        print("User \(id): Im dead")
    }
}


for i in 1...10 {
    let user = UserNew(id: i)
    print("User \(user.id): I m in control!")
}


// work variabels in class


class UserVar {
    var name = "Paul"
}

var user = UserVar()
user.name = "Taylor"
user = UserVar()
print(user.name)


// ssummary




class Animal {
    let legs: Int  // typically attached to feet
    init (legs : Int) { self.legs = max(legs, 0)  } // cannot be negative
}

class Dog: Animal {
    init() { super.init( legs: 4 ) }       // dogs are quadrupeds.
    public func speak() { print("bark") }  // standard implementation
}

class Cat: Animal {
    let isTame: Bool
    init ( isTame isTameFromInit: Bool) {
        isTame = isTameFromInit
        super.init(legs: 4) // cats are quadrupeds.
    }
    public func speak() { print("meow?") }
}

class Corgi:  Dog { override func speak() { print ("YAP YAP YAP!")     }}
class Poodle: Dog { override func speak() { print ("WOOF!")            }}

class Persian: Cat {
    init() { super.init(isTame: true)}
    override func speak() { print("Yowwwww Yowwwwww") }}
class Lion:    Cat {
    init() { super.init(isTame: false)}
    override func speak() { print("Roooooooar")       }}

// ====================================
// Test cases to try in Playground
let larry = Corgi()    // create an instance of the Corgi class
let moe   = Poodle()
let curly = Persian()
let shemp = Lion()

print ("Larry is a dog with \(larry.legs) legs. Larry says ")
larry.speak() ; print("\n")
print ("Moe is a dog with \(moe.legs) legs. Moe says ")
moe.speak() ; print("\n")
print ("Curly is a " + (curly.isTame ? "tame " : "wild ") + "cat with \(curly.legs) legs. Curly says ")
curly.speak() ; print ("\n")
print ("Shemp is a " + (shemp.isTame ? "tame " : "wild ") + "cat with \(shemp.legs) legs. Shemp says")
shemp.speak() ; print("\n")






