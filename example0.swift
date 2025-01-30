import UIKit
var fruits: [String] = ["Apple", "Banana", "Cherry"]

// Accessing
let firstFruit = fruits[0]

fruits[0] = "Blueberry"

print("\(fruits.first)")

// Modifying
fruits.append("Orange")

fruits.remove(at: 1)

print(fruits)


for fruit in fruits {
    print("I have a \(fruit).")
}

// Count
let numberOfFruits = fruits.count

// Empty Check
let isEmpty = fruits.isEmpty


// creating an array
var bucketList: [String]
bucketList = ["The last of us: Part I"]
// add new string to the array
bucketList.append("GTA V")
print(bucketList)

// count & remove
print(bucketList.count)
bucketList.remove(at: 1)
print(bucketList)

//bucketList.remove(at: 1)

// subscripting to find your top three items
bucketList.append("Pokemon Go")
bucketList.append("Fallout 4")
bucketList.append("Elden Ring")
print(bucketList)
print(bucketList[...2])
print(bucketList[2...])

bucketList.append("FF VII: Remake")
print(bucketList[1...3])
print(bucketList)
// array equality
var array1 = ["AAA", "BB", "C"]
var array2 = ["AAA", "BB", "C"]
print(array1 == array2)


// for-in loop
var myFirstInt: Int = 0

// without explicit iterator
for _ in 1...5{
    myFirstInt += 1
    print(myFirstInt)
}

// with explicit iterator
for i in 1...5{
    myFirstInt += i
    print(myFirstInt)
}

// for-in loop with where clause
for i in 1...100 where i % 3 == 0{
    print(i)
}

print("for loop with where and multiple conditions")
for i in 1...100 where (i % 3 == 0 && i % 2 == 0){
    print(i)
}

// While loop
var i = 0
while i < 6
{
    print(i)
    i += 1
}

print("test multiple conditions")
var n = 0
//while loop, increment j and i, j increment by 2 and j < 10, i increment by 1 and i < 6, print out i and j
i = 0
while (i < 6) && (n < 10) {
    print(i, n)
    i += 1
    n += 2
}

// repeat-while loops
var j = 0
repeat{
    print(j)
    j += 1
} while j < 6


/* Exercise
 Objective: Learn how to manipulate arrays using loops and explore Swift's built-in Array methods for more convenient operations. */
 

/* Task 1: Reverse Array Using Loop
 1. Create an array named toDoList with the following elements: "Take out the trash", "Pay bills",
 "Cross off finished items".
 2. Write a for-in loop to reverse the order of the elements in toDoList.
 3. Log the reversed array to the console. */

print("Array exercise")
var toDoList: [Int] = [1,2,3,4,5,6,7,8,9,10]
i = 0
let todoCount = toDoList.count
print(toDoList)
for i in 0...(todoCount / 2){
    //print(i)
    let tmp = toDoList[i]
    toDoList[i] = toDoList[todoCount - i - 1]
    toDoList[todoCount - i - 1] = tmp
}
print(toDoList)


 
 /* Task 2: Reverse Array Using Built-in Method
 1. Examine the Swift Array documentation to find a more convenient built-in method for reversing
 an array.
 2. Use this method to reverse toDoList again and log the result to the console. */


/* Task 3: Shuffle Array
 1. Refer to the Array documentation to find a built-in method for shuffling the elements in an array.
 2. Use this method to rearrange the items in toDoList into a random order.
 3. Log the shuffled array to the console.
 */


// Strings

let playground = "Hello Playground"
print(playground)

var greeting = "Hello, playground"
greeting += "!"
print(greeting)

// Characters
for c in greeting{
    print("\(c)")
}

// counting characters
let b = greeting.count
print(b)

//Index and range
//Finding the fifth character
let start = greeting.startIndex
let end = greeting.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
//playground[5]
/* Swift uses a type called String.Index to keep track of indices in string
instances. The Swift compiler will not let you access a specific character
on a string via a subscript index */


// pulling out a range
let range = start...end
let firstFive = playground[range]
print(firstFive)

/* Type of firstFive: String.SubSquence*/

let startPlay = greeting.index(greeting.startIndex, offsetBy:6)
let endPlay = greeting.index(startPlay, offsetBy: 3)
let playRange = startPlay...endPlay
let play = playground[playRange]
print(play)

// firstIndex() method
let greeting2 = "Hi there! It's nice to meet you! 👋"
let endOfSentence = greeting2.firstIndex(of: "!")!
let firstSentence = greeting2[...endOfSentence]

/* Exercise: Working with Empty Strings in Swift
 Objective:
– Learn how to initialize an empty string and utilize its startIndex and endIndex properties to check for emptiness. This skill is particularly useful when designing input forms to prevent users from submitting blank entries. */

/* Task:
1. Initialize a new String variable named empty and assign it an empty string
value: let empty = "".
2. Use the startIndex and endIndex properties of the empty string to ascertain
whether the string is genuinely empty. */


// optional type

/* A type that represents either a wrapped value or the absence of a value.

- You use the Optional type whenever you use optional values.
- Swift’s type system usually shows the wrapped type’s name with a trailing
question mark (?) instead of showing the full type name. */

// converting a String to an Int:
let integer = Int("123")

// result is an optional Int (Int?), which will be nil if the conversion fails.


let validString = "42"
if let validInteger = Int(validString) {
    print("Successfully converted to \(validInteger)")
} else {
    print("Conversion failed")
}

let invalidString = "abc"
let convertedInteger = Int(invalidString) ?? 0
print(convertedInteger)




// nil coalescing operator
let name: String? = nil
let unwrappedName = name ?? "Anonymous"
