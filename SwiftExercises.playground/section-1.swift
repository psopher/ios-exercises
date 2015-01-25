import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    var cheese = "cheddar"
    return cheese
}

var fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

fullSentence = "My favorite cheese is \(favoriteCheeseStringWithCheese)"

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray += [5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for var i = 1; i <= 10; i++ {
    print ("\(i) ")
}


// Use a half-closed range loop to print 1 - 10, inclusively
for var q = 1; q < 11; q++ {
    print ("\(q) ")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

var returnValue : Array

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    for var x = 1; x <= 2; x++ {
        for (characteristic, descriptionOfCharacteristic) in characters[x] {
            if characteristic = "favorite drink" {
                returnValue += [\descriptionOfCharacteristic, ]
            }
        }
    }
    return [returnValue]
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func stringSeparatedBySemiColon(items : String) {
    for var i = 1; i <= 4; i++ {
        items = "\strings[i];"
    }
    
}

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let cerealsSortedAlphabetically = sorted(cerealArray, >)


