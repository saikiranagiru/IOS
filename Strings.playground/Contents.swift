import UIKit

var greeting = "Hello, playground"
var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
         print("The first item in clothes is socks")
}else{
            print("socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))
//Note: Split() returns the longest possible subsequences of the collection, in order, around elements equal to the given element.

if clothes.contains(",") {
    print("Clothes contains more than one item")
    }else{
                print("Clothes contain only one item")
}

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]

shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]

clothes.remove(at: clothes.firstIndex(of: "T")!)

clothes.remove(at: clothes.firstIndex(of: "-")!)

print("\(shoppingList), \(clothes)")

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])

    let password = "Demo@123"
    let confirmPassword = "Demo@123"

    if password == confirmPassword {
        print("Password matches")
    }else{
        print("Passwords doesn't matches")
}

let currentYear = "2021"
var enteredYear = "2020"

if currentYear.elementsEqual(enteredYear) == true
{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}

 var vehiclePoweredBy = "Diesel"

 if vehiclePoweredBy != "Electricity" {
 print("Vehicle is not eco-friendly")
 }else{
 print("Vehicle is eco-friendly")
 }

let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"

if nameGiven.lowercased() == enteredName.lowercased(){
print("Entered name and given name matches with each other")
}else{
print("Entered name does not matches with the given name")
}

