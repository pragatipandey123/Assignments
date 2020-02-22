import UIKit

//Write an enum and create an extension of the enum.
enum Day : String{
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}
extension Day{
    var value : String{
        return self.rawValue
    }
    func printTheDays(){
        switch self {
        case .Sunday:
            print("Sunday")
        case .Monday:
            print("Monday")
        case .Tuesday:
            print("Tuesday")
        case .Wednesday:
            print("Wednesday")
        case .Thursday:
            print("Thursday")
        case .Friday:
            print("Friday")
        case .Saturday:
            print("Saturday")
        }
    }
}
print(Day.Friday.value)
Day.Saturday.printTheDays()



//Create a class and write the delegate of UITextField in extension of that class.
class UseOfExtension : UITextField {
    
}

extension UseOfExtension : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        <#code#>
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#code#>
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        <#code#>
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        <#code#>
    }
}


//Write a protocol and create an extension of the protocol.
protocol Statement{
        //code
}
class Printing : Statement{
        //code
}
extension Printing{
     func sayHello() {
          print("Hello!")
    }
}


//Explain generic with an example
func swapNumbers<T>(_ a : inout T, _ b : inout T){
    let temp = a
    a = b
    b = temp
}
var value1 = 3
var value2 = 4
swapNumbers(&value1, &value2)
print("value1 is: \(value1), value2 is : \(value2)")



//Example of difference between map and compactMap
var numbers = [1, 2, 3, 4, 5]
var mapping = numbers.map { $0 * 4} // use of map function. It will multiply every element of an array with 4
print(mapping)

var str : [String?] = ["hi", "hello", nil, "world"]
var newstr = str.map { $0}// here map function is also mapping the nil value
print(newstr)

//Example of compactMap
var str1 : [String?] = ["hi", "hello", nil, "world"]
var newstr1 = str.compactMap { $0}// here compactMap function does not map the nil value
print(newstr1)



/*
  struct Person {
    
    var name : String
    var age : Int
    
}
let person1 = Person(name: "Sam", age: 23)
let person2 = Person(name: "John", age: 30)
let person3 = Person(name: "Rob", age: 27)
let person4 = Person(name: "Luke", age: 20)
 
let personArray = [person1, person2, person3, person4]
 
Find all person whose age is more than 25 using filter function.*/

struct Person{
    var name : String
    var age : Int
}
let person1 = Person(name: "Sam", age: 23)
let person2 = Person(name: "John", age: 30)
let person3 = Person(name: "Rob", age: 27)
let person4 = Person(name: "Luke", age: 20)
 
let personArray = [person1, person2, person3, person4]
var new = personArray.filter {($0.age > 25) }
print(new)

