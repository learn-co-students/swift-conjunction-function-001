//  Sandbox.swift

import Foundation

/*

* Write your function here!

*/

func listWithElements(elements:[String], conjunction:String)->String{
    var string = ""
    if(conjunction == "and" || conjunction == "or" || conjunction == "&" || conjunction == ""){
    
        if(elements.count == 0){
            string = ""
        }
        else if(elements.count == 1){
            string = elements[0]
        }
        else if(elements.count == 2){
            string = "\(elements[0]) \(conjunction) \(elements[1])"
        }
        else {
            var i = 0
            while i < elements.count{
                if(i == elements.count - 2){
                    string +=  elements[i] + ", \(conjunction) "
                }
                else if((i == elements.count - 1)) {
                    string +=  elements[i]
                }
                else{
                    string +=  elements[i] + ", "
                }
                i += 1
            }
        }
    }
    else{
        string += "unknown conjunction"
    }
    
    return string
}
