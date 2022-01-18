import UIKit

var greeting = "Hello, playground"

print("Hii",10,12.25)
print(greeting)

//String Interpolation
// "\()"

var prLan = "Swift"
print("I love \(prLan) programming language")

var name = "Ajay"
var grade = 90
print("Hello, \(name)!")
print("Hello, \(name)! You got \(grade) percent in ios course.")

var age = 24
print("You are \(age) years old and in another \(2 * age) years, you will be \(age * 3)")

print("\n")

print("""
Hello
World!
""")

print("\n")
print("Hello All,\rWelcome to Swift Programming")

print("\n")

//let is a constant
//explicit declartion of data type
let welcomeMessage : String = "Hello,"
print(welcomeMessage , "All!")
print("Welcome to Swift Programming")
print("Spring 2022")
print("***********")
print("Welcome to Swift Programming" , terminator : "-" )
print("Spring 2022")

var name1 = "Ajay"
var grade1 = 90
print("Hello, \(name1)!", terminator : " $$ ")
print("You got \(grade1) percent in ios course.")

print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is" , terminator : ": ")
print(1,2,3,4,5,6, separator: "-")

//Declaration of variable
 var mobileBrand = "Apple"
//let mobileBrand = "Apple"
//Cannot assign to value: 'mobileBrand' is a 'let' constant
//error: 01Demo.playground:57:1: error: cannot assign to value: 'mobileBrand' is a 'let' constant mobileBrand = "Samsung"

mobileBrand = "Samsung"
print(mobileBrand)
    
     

let pi = 3.14
//pi = 4.14
//01Demo.playground:65:1: note: change 'let' to 'var' to make it mutable let pi = 3.14 ^~~
print(pi)


//Explicit Declaration of Variable
var age2 : Int = 23
age2 = age2 * 2
print(age2)


var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")


var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)
print(course1 ,terminator: " - ")
print(course2)

print(10,20,30)
print(12.5,15.5)

print("\n")
var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

print ("\n")

var name2 = ("John","Smith")
var fName = name2.0
var lName = name2.1
print(fName , terminator : ",")
print(lName)

print("\n")

var origin = (x : 0 , y : 0)
var point = origin
print(point)

print("\n")
let city = (name : "Maryville" , population : "11000")
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

var shoppingList = ("Jewllery" ,"Clothing","Accesories",("Belt","Bag"))
print(shoppingList.0)
print(shoppingList.1)
print(shoppingList.2)
print(shoppingList.3.0)
print(shoppingList.3.1)







