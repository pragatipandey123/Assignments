import UIKit

/*Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an array of strings) and “sifts out” the beans from the other groceries. The function should take one argument that has a parameter name called list, and it should return a named tuple of the type (beans: [String], otherGroceries: [String]).

Hint:

Here is an example of how you should be able to call your function and what the result should be:

let result = siftBeans(fromGroceryList: ["green beans",

                                         "milk",

                                         "black beans",

                                         "pinto beans",

                                         "apples"])

 

result.beans == ["green beans", "black beans", "pinto beans"] // true

result.otherGroceries == ["milk", "apples"] // true” */

func siftBeans(fromGroceryList : [String]) -> (beans : [String], otherGroceries : [String]) {
    var beans : [String] = []
    var otherGroceries : [String] = []
    
    
    for i in fromGroceryList {
        if i.contains("beans") {
            beans.append(i)
        }
        else{
            otherGroceries.append(i)
        }
    }
    
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])

result.beans == ["green beans", "black beans", "pinto beans"]

result.otherGroceries == ["milk", "apples"]


//Make a calculator class with a function name “equals” that take an enum case as value like multiply, subtraction, addition, square root, division.

class Calculator{
    
    enum Operations {
        case addition(Int, Int)
        case subtraction(Int, Int)
        case multiply(Int, Int)
        case division(Int, Int)
        case squareroot(Double)
    }
    
    func equals(enumArgument : Operations) -> Any {
        switch enumArgument {
        case .addition(let a, let b):
            return a + b
        case .subtraction(let a, let b):
            return a - b
        case .multiply(let a, let b):
            return a*b
        case .division(let a, let b):
            return a/b
        case .squareroot(let a):
            return (sqrt(a))
            
        }
    }
    
    func equals(argumentAs function : (Int, Int) -> Int, num1 : Int, num2 : Int) -> Any {
        return function(num1, num2)
    }
    
}
var abc = Calculator()
let results = abc.equals(enumArgument: .squareroot(3))
abc.equals(enumArgument: .addition(2,3))


//Make the same calculator using functions as an argument, define all type functions in a struct.

struct Operation {

       static func addition(a : Int, b : Int) -> Int {
           return a + b
       }

       static func subtraction(a : Int, b : Int) -> Int {
           return a - b
       }

       static func multiply(a : Int, b : Int) -> Int {
           return a * b
       }

       static func division(a : Int, b : Int) -> Int {
           return a / b
       }
       
    static func squareroot(a : Double) -> Double{
        return sqrt(a)
    }
   }


let operationObject = abc.equals(argumentAs: Operation.addition(a:b:), num1: 1, num2: 2)
abc.equals(argumentAs: Operation.multiply(a:b:), num1: 4, num2: 5)











