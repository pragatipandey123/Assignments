import UIKit
struct PersonaInfo{
    var employeeId : Int
    var name : String
    var country : String
    var address : String
    var hobbies : String?
    
}
struct ProfessionalInfo{
    var employeeId : Int
    var name : String
    var department : String
    var branch : String
    var experience : Int
}
var personal : [PersonaInfo] = [PersonaInfo(employeeId: 1, name: "Pragati", country: "India", address: "Noida", hobbies: "Dancing"),
                                PersonaInfo(employeeId: 2, name: "Sanskriti", country: "India", address: "Noida", hobbies: "Dancing"),
                                PersonaInfo(employeeId: 3, name: "Shikha", country: "China", address: "Italy", hobbies: "Singing"),
                                PersonaInfo(employeeId: 4, name: "Vartika", country: "America", address: "California", hobbies: "gaming"),
                                PersonaInfo(employeeId: 5, name: "Shreya", country: "Britian", address: "London", hobbies: "gaming"),
                                PersonaInfo(employeeId: 6, name: "Mansi", country: "Japan", address: "Tokyo", hobbies: "Books")]

var professional : [ProfessionalInfo] = [ProfessionalInfo(employeeId: 1,name: "Pragati", department: "iOS", branch: "India", experience: 0),
                                        ProfessionalInfo(employeeId: 2,name: "Sanskriti", department: "JVM", branch: "India", experience: 0),
                                        ProfessionalInfo(employeeId: 3,name: "Shikha", department: "Devops", branch: "America", experience: 1),
                                        ProfessionalInfo(employeeId: 4,name: "Vartika", department: "iOS", branch: "China", experience: 2),
                                        ProfessionalInfo(employeeId: 5,name: "Shreya", department: "FEEN", branch: "Japan", experience:2),
                                        ProfessionalInfo(employeeId: 6,name: "Mansi", department: "Drupal", branch: "China", experience: 3)]

// . create a third employee structure that contains the information from both based on common id
struct Employee{
    var employeeId : Int
    var name : String
    var country : String
    var address : String
    var hobbies : String
    var department : String
    var branch : String
    var experience : Int
}
var employeeobj : [Employee] = []
for index1 in personal{
    for index2 in professional{
        if index1.employeeId == index2.employeeId{
            employeeobj.append(Employee(employeeId: index1.employeeId, name: index1.name, country: index1.country, address: index1.address, hobbies: index1.hobbies!, department: index2.department, branch: index2.branch, experience: index2.experience))
        }
    }
}
print(employeeobj)

//write a function that takes the two structure and give me list of all the employee that live in certain country
func EmployeesInSameCountry(country : String){
    for index in employeeobj{
        if country == index.country{
            print(index.name)
        }
}
}
EmployeesInSameCountry(country: "India")
EmployeesInSameCountry(country: "China")
EmployeesInSameCountry(country: "Japan")

//write a function that give me list of all the employee that live in certain department
func EmployeesInDepartment(deparment : String){
    for index in employeeobj{
        if deparment == index.department{
            print(index.name)
        }
    }
}
EmployeesInDepartment(deparment: "iOS")
EmployeesInDepartment(deparment: "Devops")
EmployeesInDepartment(deparment: "FEEN")

//write a function that give me list of all the employee that live in same country and work in the same branch
func employeeOfSameCountryAndSameBranch(){
    
    for index in employeeobj{
        if index.country == index.branch {
            print(index.name)
        }
    }
    
}
 employeeOfSameCountryAndSameBranch()
    
//write a function that return me list of all the employee name that has a hobby and with their experience
func employeeWhoHaveHobbies(){
    
    for index in employeeobj{
        if index.hobbies.isEmpty {
            print("\(index.name)'s  Hobby is \(index.hobbies) and experience is \(index.experience)")
        }
    }
}

employeeWhoHaveHobbies()

//write a function that return me list of all the employee name that starts with any “S”
func employeeNameStartWithS(){
    
    for index in employeeobj{
        if index.name.first == "S" {
            print(index.name)
        }
    }
}
employeeNameStartWithS()





