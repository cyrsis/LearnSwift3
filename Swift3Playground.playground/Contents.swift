
import UIKit //Import statment
import Foundation


//** Lessons Type declaration
func changaOne(){
    
}
class Manny{
    
}
struct Moe{
    
}

enum Jack{
}

var wallet = 0
wallet += 50
wallet -= 5
wallet -= 10


var summy : Bool = false




//** Lessons let vs Var

print("** Lessons let vs Var")
let one = 1
var two = 2

let intone : Int = 1
var inttwo : Int = 2
two = one // two change to one which is fine
//one = two //Compile error


//Swift like double vs float, always take double
var weight : Double = 192.2343432423423432432432423

weight

floor(weight) //Rquire import Foundation
ceil(weight)   //Round down and Round up

pow(5,5.2)  //Take Double and Double, and it working good!!!


//Arrays

var movies = ["Sandlot","Emperor's new Groove","Batman"]

movies.append("Iron Man")

movies.count
movies.last
movies.first

print( movies)

movies.insert("Back to the future", at: 4)

movies.index(of: "Batman")


var age = 125

switch age {
case 1...100:
    "U are model"
default:
    "you are super man"
}

//age * weight //wont work
Double(age) * weight


let implicitInterger = 70
let implicitDouble = 70.0
//let ex

var myname = "victor"

"My name is \(myname)" //String concat

//** Lessons Function
print("** Lessons functions")

func sum (_ x:Int,_ y:Int) -> Int  // The underscore can help avoid variable type as x: y:
{
    let result = x+y
    return result
    // (int, int) -> Function Signature
    //_~space~ suppressing the external of the parameter name
}

var answer = sum(1,1)
var answer2 = sum(12,sum(1,1))

func say1(_ s:String)-> Void {print(s)}
func say2(_ s:String)->() {print(s)}
func say3(_ s:String){print(s)}

say2("Something")

func echoString(_ s:String, times: Int) -> String{
   var result = ""
    for _ in 1...times{ result += s}
    return result
}

for thenumber in 1...100{
print("hello workd \(thenumber)")
}

enum Direction{
case north
case south
case west
case northNorthWest // style guide
}

let something = echoString("hey ", times: 3)


UIColor.red //Find the color values
#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1) //Or just type color

func go(){
    let one = 1
    var two = 2
    two = one
    print(SELF_LIBRARY_ORDINAL)
    two.hashValue
}

go()

//Test for true and false
false || false
false || true

true || true
true && true

//TODO Cannt get this funtion to work, here is the work process

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

var str = "Hello, playground👨" //because Swift Support Unicode


//Hit command + control + space bar
//👧🏼👳🏽

str.lowercased() //Make it lower case

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
