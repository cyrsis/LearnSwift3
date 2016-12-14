
import UIKit

//*** Lessons Optional

//Optional -> What is optional?
//String to Int

var str = "Hello, playground"

//let strNumber = "123"
let strNumber = "ABC"

func convertsStringInterger(str:String)->Int?{ //Can be a global function
    
    return Int(str)
}
if let i = convertsStringInterger(str:strNumber){
    i.bigEndian
}else{
    // Check Types conversations
    // Try let strNumber to N123s
    print("number could not be turned into an integer")
}


//*** Lessons Class and Objects


class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func say(phrase: String) {
        print("\(firstName) \(lastName) says '\(phrase)'")
    }
    
    class func say(phrase: String) {
        print("…and the people all say '\(phrase)'")
    }
}

let p1 = Person(firstName: "Alex", lastName: "Vollmer")
p1.say(phrase: "let’s write some Swift!")

Person.say(phrase: "let’s get tacos")