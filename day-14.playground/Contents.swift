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
