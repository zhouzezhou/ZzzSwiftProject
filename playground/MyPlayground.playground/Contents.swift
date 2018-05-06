//: Playground - noun: a place where people can play

import UIKit

let threeDoubleQuotes = """

   This string starts with a line feed.
               It also ends with a line feed.

 """

print(threeDoubleQuotes)


var emptyString = "abc"               // empty string literal
var anotherEmptyString = String()  // initializer syntax



anotherEmptyString = emptyString
anotherEmptyString = "Zzz"

print(emptyString)
print(anotherEmptyString)

for c in "Dog!?" {
    print(c)
}


let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString = String(catCharacters)
print(catString)

let multiplier = 3
let message = "\(multiplier) times \(16 + 9 * 415) is \(2 * 2.5)"
print(message)









