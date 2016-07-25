//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let empty: [String] = []
        let han = ["solo"]
        let thisThat = ["this", "that"]
        let firstPerson = ["me", "myself", "I"]
        let instructors = ["Joe", "Tim", "Jim", "Tom", "Mark"]

        print(listWithElements(empty, conjunction: "and"))
        print(listWithElements(empty, conjunction: "but"))
        print(listWithElements(han, conjunction: "but"))
        print(listWithElements(han, conjunction: "and"))
        print(listWithElements(thisThat, conjunction: "or"))
        print(listWithElements(firstPerson, conjunction: "and"))
        print(listWithElements(instructors, conjunction: "&"))
        
        // do not alter
        return true //
    }   /////////////
}       ////////////
