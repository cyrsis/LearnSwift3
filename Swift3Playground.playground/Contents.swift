
import UIKit //Import statment


//** Lessons Type declaration
func changaOne(){
    
}
class Manny{
    
}
struct Moe{
    
}

enum Jack{
}




//** Lessons let vs Var

print("** Lessons let vs Var")
let one = 1
var two = 2
two = one // two change to one which is fine
//one = two //Compile error


//** Lessons Function
print("** Lessons functions")
func go(){
    let one = 1
    var two = 2
    two = one
    print(SELF_LIBRARY_ORDINAL)
}

go()



print("** Lessons extensions method")
print("Hello");print("world") //Can put more than two statement in here

let sum = 1+2
let s=1.description //description is toString()?

extension Int{
    func sayHello(){
        print("Extension say Hello , I am \(self)")
    }
}
1.sayHello()
print(s)



print("** Lessons optional")

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

print("** Lessons Class and objects ")
//*** Lessons Class and Objects and self keywords because it point to instances of the class


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
