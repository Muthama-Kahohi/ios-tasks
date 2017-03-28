//: Playground - noun: a place where people can play

import UIKit

//    - **Task:** Using a Swift playground, write a program that combines an array of dictionaries into a single dictionary such that the value associated with each key is a _set_ containing the unique values associated with that key in the input dictionaries. The program should then print out the _sorted_ results in human-readable form.

var arrayOfDict = [[1:["Paul","Angela","Barney"]],[2:["Dennis","Mark","Dennis"]],[3:["Ryan","Whitney"]]]
var combinedDictionary = [Int:Set<String>]()


//First combine the array of dictionaries into one dictionary as well as ensuring unique values in the sets
for dict in arrayOfDict{
    for (key,value) in dict{
        combinedDictionary[key] = Set(value)
    }
}

//Sort the keys and return in huan readable form
for key in combinedDictionary.keys.sorted(){
    print ("key----\(key)")
    guard let value = combinedDictionary[key] else {break}
    for (index, value) in value.enumerated() {
        print("Value \(index+1): \(value)")
    
    }

}


