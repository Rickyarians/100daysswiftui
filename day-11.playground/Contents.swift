// limit access using access control

// private dont let anything outside the struct use this
// fileprivate sdont let anything outside the currect file use this
// public let anyone, anywhere use this

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)


if  success {
    print("success")
} else {
    print("failed")
}


//account.funds -= 1000

print(account.funds)

//struct FacebookUser {
//    private var privatePosts: [String]
//    public var publicPosts: [String]
//}
//let user = FacebookUser()


struct Doctor {
    var name: String
    var location: String
    private var currentPatient: String = "No one"
   
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
    
    func checkcurrentPatient() -> String {
        return currentPatient
    }
}
let drJones = Doctor(name: "test", location: "Lagi")

print(drJones.checkcurrentPatient())


struct RebelBase {
    private var location: String
    private var peopleCount: Int
    init(location: String, people: Int) {
        self.location = location
        self.peopleCount = people
    }
}
let base = RebelBase(location: "Yavin", people: 1000)



struct Scholl {
    static var studentCount = 0
}


print(Scholl.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeURL = "https://google.com"
}


struct Employee {
    let username : String
    let password : String
    
    
    static let example = Employee(username: "tst", password: "String")
}


// solution 6

struct Car {
    let model: String
    let seat: Int
    private(set) var currentGear = 1 {
        didSet {
            currentGear = min(max(currentGear, 1), 10)
        }
        willSet {
            print(currentGear)
        }
    }
    
    enum GearDirection {
        case up, down, neutral
    }
    
    
    public mutating func changeGear(_ direction: GearDirection) {
        switch direction {
        case .down: currentGear -= 1
            if currentGear < 1 {currentGear = 1 }
        case .up: currentGear += 1
            if currentGear > 10 {currentGear = 10}
        case .neutral:
            currentGear = 1
        }
    }
}


var prefect = Car(model: "Ford Prefect", seat: 4, currentGear: 3)
prefect.changeGear(.up)
prefect.changeGear(.neutral) // Jump right to Gear 1.
prefect.changeGear(.down)



