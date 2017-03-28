//: Playground - noun: a place where people can play
// Taxk 0ne
//-**Task:** Using a Swift playground, write a program that iterates over an arbitrary range of integers and prints descriptive phrases for each.

import UIKit

let number = 10
for index in -10...number{
    var oddOrEven = index % 2
    switch (oddOrEven){
    case 0:
        print ("\(index) ---- Even")
    default:
        print(("\(index) ---- odd"))
    }
}

