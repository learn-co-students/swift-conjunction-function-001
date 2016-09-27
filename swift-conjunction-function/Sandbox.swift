//  Sandbox.swift

import Foundation

/*

* Write your function here!
Write a function named listWithElements(_:conjunction:) that takes two arguments, an array of strings named elements and a string named conjunction, and returns a string. The returned string should contain the strings from the elements array but organized into a list phrase using the conjunction argument. This means that:


1. If the elements argument is empty, the function should return an empty string.
2. A single string in the elements array should result to just that same string, as in "one".
3. Two strings in the elements array should be joined with the conjunction argument, as in "one and two".
4. Three or more strings in the elements array should be joined with commas (,), with the conjunction also joining the last element in the list phrase, as in "one, two, or three".
5. Acceptable conjunction arguments are "and", "or", and "&" ("ampersand", a symbol meaning "and"). If the conjunction argument does not match one of these three strings, the function should return a string message that reads "unknown conjunction".
*/



func listWithElements(elements: [String], conjunction: String) -> String {
    let validConjunctions = ["and", "or", "&"]
    
    if !validConjunctions.contains(conjunction) {
        return "unknown conjunction"
    }
    
    switch elements.count {
    case 0:
        return ""
    case 1:
        return elements[0]
    case 2:
        return "\(elements[0]) \(conjunction) \(elements[1])"
    default:
        let lastIndex = elements.count - 1
        var list = "\(elements[0])"
        
        for var i = 1; i < elements.count; i++ {
            list += ", "
            if i == lastIndex {
                list += "\(conjunction) "
            }
            list += elements[i]
        }
        return list
    }
}


