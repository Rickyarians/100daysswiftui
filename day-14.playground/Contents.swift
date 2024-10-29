let opposites = ["Mario": "Wario", "luigi": "Waluigi"]
let kocak = opposites["peach"] ?? "kocaklah"

print(kocak)


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil


if let unwrapperdNumber = number {
    print(square(number: 10))
}


if let peachoppsite = opposites["peach"] {
    print("\(peachoppsite)")
} else {
    print("nothing")
}


// with guard


func printSquare(of number: Int?) {
    guard let number = number else {
        print("missing input")
        return
    }
}
printSquare(of: nil)


// null nil coalescing

let captains = [
    "Enterprise" : "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]


let new = captains["Serenity"] ?? "N/A"

let new1 = captains["Serenity", default: "N/A"]


struct Book {
    let title: String
    let author: String?
}


let book = Book(title: "book1", author: nil)


let author = book.author ?? "N/A"

print(author)


// optional chaining

let dataGOT = ["sansa", "arya", "robb"]
let resultGOT = dataGOT.randomElement()?.uppercased() ?? "nothing"

print(resultGOT)

struct BookA {
    let title : String
    private var _author : String?
    var author: String? {
        get {
            return _author
        }
        set {
            self._author  = newValue
        }
    }
    
    init(title: String, author: String? = nil) {
        self.title = title
        self.author = author
    }
}

var booka: BookA? = BookA(title: "test", author: "kocak")
let authorA = booka?.author?.first?.uppercased() ?? "A"
booka?.author = "kocak bingit"
print(booka?.author ?? "")


// handle function failure with optionals


enum UserErro: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserErro.badID
}

if let user = try? getUser(id: 23) {
    print("user \(user)")
}

let userlagi = (try? getUser(id: 30)) ?? "anon"

print(userlagi)

enum MyError: Error {
    case divisionByZero
}

func divide(_ numerator: Int, by denominator: Int) throws -> Double {
    if denominator == 0 {
        throw MyError.divisionByZero
    }
    return Double(numerator) / Double(denominator)
}

let numerator = 10
let denominator = 2

// Menggunakan `try!` karena kita yakin denominator tidak akan menjadi 0
let result = try! divide(numerator, by: denominator)
print("Result: \(result)") // Output: Result: 5.0

enum MyErrora: Error {
    case invalidInput
}

func riskyFunction(input: Int) throws -> String {
    if input < 0 {
        throw MyErrora.invalidInput // Melempar error jika input tidak valid
    }
    return "Valid input: \(input)"
}

// Menggunakan `try?` untuk memanggil fungsi yang dapat melempar
let result1 = try? riskyFunction(input: 5) // Ini akan berhasil
print(result1 ?? "Failed") // Output: Valid input: 5

let result2 = try? riskyFunction(input: -1) // Ini akan melempar error
print(result2 ?? "Failed") // Output: Failed



func checkpoint9(params: [Int]?) -> Int {
    return params?.randomElement() ?? 99
}

print(checkpoint9(params: [9,3,4,23,53,232]))
