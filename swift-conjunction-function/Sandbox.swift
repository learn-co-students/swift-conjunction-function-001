//  Sandbox.swift

import Foundation

func listWithElements(elements: [String], conjunction: String) -> String {
    let acceptableConjunctions = ["and", "or", "&"]
    if !acceptableConjunctions.contains(conjunction) {
        return "unknown conjunction"
    }
    switch elements.count {
    case 0:
        return ""
    case 1:
        return elements[0]
    case 2:
        return elements[0] + " \(conjunction) " + elements[1]
    default:
        var list = "\(elements[0]), "
        let indexOfLastElement = elements.count - 1
        for i in 1 ..< indexOfLastElement {
            list = list + "\(elements[i]), "
        }
        list = "\(list)\(conjunction) \(elements[indexOfLastElement])"
        return list
    }
}
