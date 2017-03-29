//: Playground - noun: a place where people can play

import UIKit


//    - **Task:** Write a dictionary program with at least three functions that allow the user to look-up values in a dictionary and return them in human-readable form, and then traverse the dictionary to print out each value in each set.// **Resources:** Use a Swift playground as your tools. Use a trailing closure in your code when you are traversing the dictionary such that the closure is called once for each key and value within the associated sets.

//Function1..look up values
//Traverse and print each value in set
//trailing closure when traversing dictionary
//closure called once for each key and value

var array = [[1:["dennis","Angela","dennis"]], [2:["dbarney","Angela","dKironde"]], [3:["Kahohi","Mark","Ryan"]]]

func convertToDIct (_ arrayOfDicts: [[Int:[String]]]) -> [Int:[String]] {
    var newDictionary = [Int: [String]]()
    for item in arrayOfDicts {
        for (key, value) in item {
            newDictionary[key] = value
        }
    }
    return newDictionary
}

func removeDuplicateElements () -> [Int: Set<String>]{
    let returnedDictionary = convertToDIct(array)
    var nonDuplicateDict = [Int: Set<String>] ()
    for (key, value) in returnedDictionary {
        nonDuplicateDict[key] = Set(value)
    }
    return nonDuplicateDict
}

func printOutValues (closure: () -> Void) -> Void {
    
}

let closure = {
    var readableItems = removeDuplicateElements()
    for key in readableItems.keys.sorted() {
        print("Key: \(key)")
        guard let value = readableItems[key] else {break}
        for (index, value) in value.enumerated() {
            print("Value \(index+1): \(value)")
        }
    }
}

printOutValues(closure: closure)