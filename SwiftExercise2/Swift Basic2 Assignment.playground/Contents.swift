import UIKit
//Initializer Topic

//Prameterised intialisation with class or struct
class Employee{
    var EmployeeName : String
    var EmployeeID : Int
    init(EmployeeName: String, EmployeeID: Int) //Parameterised Initialisation
    {
        self.EmployeeName = EmployeeName
        self.EmployeeID = EmployeeID
    }
}
var result = Employee(EmployeeName: "Pragati", EmployeeID: 1)
print("EmployeeName: \(result.EmployeeName), EmployeeID: \(result.EmployeeID)")

//Using convenience Initializers, write-down the Initializers for MOVIE class having basic attributes like title, author, publish_date, etc.

class MOVIE{
    var title : String
    var author : String
    var publish_date : Int
    init(title: String, author: String, publish_date: Int ) { //designated initialiser
        self.title = title
        self.author = author
        self.publish_date = publish_date
    }
    convenience init(author: String){  //convenience initialiser
        self.init(title: "Marvels", author: author, publish_date: 2020)
    }
}
var mymovie = MOVIE(author: "Mahesh bhatt")
var myothermovie = MOVIE(title: "Iron Man", author: "Johny depth", publish_date: 2016)
print("My movie author, title, publish_date is: \(mymovie.author), \(mymovie.title), \(mymovie.publish_date)")
print("My another movie title, author and publish_date is: \(myothermovie.title), \(myothermovie.author), \(myothermovie.publish_date)")

//Declare a structure which can demonstrate the throwable Initializer

struct FileStruct {
    var text: String

    init() throws { //throwable Initialiser
        text = try String(contentsOfFile: "/Users/me/file.txt", encoding: String.Encoding.utf8)
    }
}

//Array Topic

//Create an array containing the 5 different integer values. Write at least 4 ways to do this.
let way1 = [1, 2, 3, 4, 5]
var way2 = [9, 8, 7, 6, 5]
var way3 = [Int](repeating: 0, count: 10)
print(way3)
var way4 : [Int] = [54, 78, 90, 23, 12]

//Create an immutable array containing 5 city names.
let city = ["lucknow", "ghaziabad", "noida", "gorakhpur", "banaras"]// If we define them with constant 'let' then they are immutable


//Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.

//One way to add elements in an array
var arr = ["America", "London", "Delhi", "Mumbai", "Chennai"]
arr.append("Canada")
arr.append("Switzerland")
arr.append("Spain")
print(arr)
//Second way to add elements in an array is
var arr1 = ["America", "London", "Delhi", "Mumbai", "Chennai"]
arr.append(contentsOf: ["Canada", "Switzerland", "Spain"])
print(arr1)

//Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array
var values = [14, 18, 15, 16, 23, 52, 95]
values[2] = 24
values[4] = 48
print(values)


//Set Topic
let houseAnimals: Set = ["Dog", "Cat"]
let farmAnimals : Set = ["cow", "Hen", "Sheep", "Dog", "Cat"]
let cityAnimals : Set = ["Bird", "Rat"]

//Determine whether the set of house animals is a subset of farm animals.
print(houseAnimals.isSubset(of: farmAnimals))
//This will return true because every element of houseAnimals set is also a member of farmAnimals

//Determine whether the set of farm animals is a superset of house animals.
print(farmAnimals.isStrictSubset(of: houseAnimals))
//Returns false because every member of farmAnimals is not present in houseAnimals but if we check houseAnimals is a strictsubset of farmAnimals then it will return true because every member of houseAnimals is present in farmAnimals and it contains other members which is not present in houseAnimals

//Determine if the set of farm animals is disjoint with city animals.
print(farmAnimals.isDisjoint(with: cityAnimals))
//Returns true because in both sets on member is common so they are disjoint

//Create a set that only contains farm animals that are not also house animals.
var newset = farmAnimals.subtracting(houseAnimals)//the newset is made up of the elements of the farmAnimals set that are not elements of houseAnimals
print(newset)

//Create a set that contains all the animals from all sets.
var new : Set = farmAnimals
new.formUnion(houseAnimals)
new.formUnion(cityAnimals)
print(new)


// Dictionary Topic

//Create an empty dictionary with keys of type String and values of type Int and assign it to a variable in as many ways as you can think of (there's at least 4 ways).
let myDictionary1: Dictionary<String, Int> = [:]
let myDictionary2: [String: Int] = [:]
let myDictionary3 = Dictionary<String, Int>()
let myDictionary4 = [String: Int]()

//Create a mutable dictionary named secretIdentities where the key value pairs are "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent".
var dictionary = ["Hulk":"Bruce Banner", "Batman":"Bruce Wayne", "Superman":"Clark Kent"]

//Create a nesters structure of Key-value pair.
var Dict = [String : Int]()
var NestedDict =  [String : [String : Int]] ()
var AnotherNestedDict = [String : [String : [String : Int]]] ()

Dict["one"] = 1
NestedDict["two"] = Dict
AnotherNestedDict["three"] = NestedDict


//Print all the keys in the dic
var dict1 = [1:"pragati", 2:"pandey", 3:"newers", 4:"world"]
for (key, _) in dict1{
    print("key: \(key)")
}


//Subscript Topic
//Create a simple subscript that outputs true if a string contains a substring and false otherwise
extension String {
    subscript(substring : String) -> Bool {
        get {
            let containingString = self.range(of: substring)
            
            return !containingString!.isEmpty
            
        }
    }
}

var checkingTheString = "Hello there guys!"

checkingTheString["Hello"]

