// closures



func customFunction() {
    print("test")
}


var variabelFunction = customFunction

variabelFunction()

//let numbers = [1, 2, 3, 4, 5]
//let doubledNumbers = numbers.map { print($0)}
//
//let array1 = [1, 2, 3]
//let array2 = [4, 5, 6]
//
//let zippedArray = zip(array1, array2).map { print($0, $1) }


//func MappingFunction() -> (kocakGaming){
//    
//    func kocakGaming() => {
//        print("kocak")
//    }
//    
//    return (kocakGaming)
//}


let sayHello = {(name: String) -> String in
        "Hi \(name)!"
}


print(sayHello("Test"))


func greetUser() -> String {
    return "Kocak"
}


var greetCopy: () -> String = greetUser

print(greetCopy())


func getUserData(for id : Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}


var getUserDataCopy: (Int) -> String = getUserData
let result = getUserDataCopy(10)
print(result)


print(getUserDataCopy(1989))


let hitungLuas = {(_ panjang: Int, _ lebar: Int) -> Int in
        return panjang * lebar
}

print(hitungLuas(10, 12))

enum KodeError : Error {
    case errorKosong;
}

let buatNamaPanjang =  {(_ namaAwal: String, _ namaAkhir : String) throws -> String in
    if namaAwal.isEmpty || namaAkhir.isEmpty { throw KodeError.errorKosong}
        return namaAwal + namaAkhir
}

do {
    try print(buatNamaPanjang("Ricky", ""))
} catch KodeError.errorKosong {
    print("error")
//    print(type(of: error))
}

var team = ["Gloaria", "Suzanne", "Piper", "Tiffany", "Tasha"]
print(team.sorted())

func captainFirstSorted(name1: String, name2: String) ->Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}


let captainFirstTeam = team.sorted(by: captainFirstSorted)

print(captainFirstTeam)


func greetUserNew() {
    print("Hi There!")
}


var greetCopyNew: () -> Void = greetUserNew

print(greetCopyNew())


let makeReservation = { (people: Int) in
    print("I'd like a table for \(people), please.")
}


makeReservation(10)


var cutGrass = { (currentLength: Double) in
    switch currentLength {
    case 0...1:
        print("That's too short")
    case 1...3:
        print("It's already the right length")
    default:
        print("That's perfect.")
    }
}


let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("I'm rowing 1km.")
    }
}
rowBoat(5)

var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}

print(costToShootMovie("Jakarta"))


var buyMagazine = { (name: String) -> Int in
    let amount = 10
    print("\(name) costs \(amount)")
    return amount
}
//buyMagazine(name: "Wired")
let bakeBirthdayCake = { (name: String) -> Int in
    print("I've made a cake for \(name); here's the bill.")
    return 50
}



bakeBirthdayCake("kocak")


let sortedNew = team.sorted {
    return $0 > $1
}

print(sortedNew)

let tOnly  = team.filter { $0.hasPrefix("T")}
print(tOnly)


let kocak = {(variabel: Int, task: (Int) -> Void) -> Void in
   task(variabel)
}

kocak(10){
    print("\($0)kocak")
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("start one")
    first()
    print("start second")
    second()
    print("start third")
    third()
}



doImportantWork{
    print("kocak 1")
} second: {
    print("what the")
} third: {
    print("what the 3")
}


var goOnBike = {
    print("I'll take my bicycle.")
}
func race(using vehicleType: () -> Void) {
    print("Let's race!")
    vehicleType()
    
}

race(using: goOnBike)


var payCash = {
    print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
    print("I'll take this \(item).")
    payment()
}
buyClothes(item: "jacket", using: payCash)


let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
func printDocument(contents: () -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents()
}
//printDocument(contents: resignation)



let driveSafely = {
    return "I'm being a considerate driver"
}
func drive(using driving: () -> Void) {
    print("Let's get in the car")
    driving()
    print("We're there!")
}
//drive(using: driveSafely)


var learnWithUnwrap = {
    print("Hey, this is fun!")
}
func learnSwift(using approach: () -> Void) {
    print("I'm learning Swift")
    approach()
}
learnSwift(using: learnWithUnwrap)


//func phoneFriend(conversation: () -> Void) {
//    print("Calling 555-1234...")
//    conversation()
//}
//phoneFriend:
//    print("Hello!")
//    print("A foreign prince wants to give you $5 million.")
//    print("What are your bank details?")

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


let oddLuckyNumbers = luckyNumbers.filter { $0 % 2 != 0 }

// Step 2: Sort the array in ascending order
let sortedOddLuckyNumbers = oddLuckyNumbers.sorted()

// Step 3: Map to strings in the desired format
let luckyNumberStrings = sortedOddLuckyNumbers.map { "\($0) is a lucky number" }

// Step 4: Print each resulting string, one item per line
for luckyNumber in luckyNumberStrings {
    print(luckyNumber)
}



