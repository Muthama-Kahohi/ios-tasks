import UIKit

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
let printThis = removeDuplicateElements()


func printOutValues (_ uniqueDict: [Int:Set<String>], closure: () -> Void) -> Void  {
    closure()
    }


printOutValues(printThis){ () -> Void in
    
    for key in printThis.keys.sorted() {
        print("Key: \(key)")
        guard let value = printThis[key] else {break}
        for (index, value) in value.enumerated() {
            print("Value \(index+1): \(value)")
        }
    }
}

