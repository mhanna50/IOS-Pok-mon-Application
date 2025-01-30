import UIKit

/*
Functions
 
- Functions are a building block of almost all programming languages.
- Allowing functionality to be defined and reused.
- The advantage of this is that code can be reused, and your overall
codebase becomes much easier to understand.
*/
 
/* Function Declaration

 - Declaring a function in Swift is accomplished using the func keyword.
 - After declaring a function, you can call it whenever you want to execute its defined task. You do this by using the function's name followed by parentheses.
*/

var greeting = "Hello, playground"

func greet(){
    print("hello world! 🌎")
}
greet()


/* Return Types

- Some functions don't just perform a task, they also return a value. This is indicated by using the -> symbol along with the type of data the function is going to return.
 
*/

func returnHello() -> String{
    return "hello world!"
}
print(returnHello())

func sum(a: Int, b: Int) -> Int{
    var c = a + b
    return c
}
var sum1 = sum(a:1,b:2)
print(sum1)


/*Parameter Names

- In Swift, every parameter has both an external name and an internal name. The internal name is used within the function body, while the external name is used when calling the function.
 
 - Let's break down into an example:
In this function, person is the internal name of the first parameter
and hometown is the internal name of the second parameter. But when we
call this function we use the external names person and from:
*/

func greet(person: String, from hometown: String) -> String{
    return "\(person) visit from \(hometown)"
}

let s = greet(person: "Ram", from: "West Chester")
print(s)


/*Functions: Default Parameters

- A default parameter value is a value that is assigned to a function parameter if no argument is provided when calling the function.
- In Swift, you can specify a default parameter value by assigning a value to the parameter when you define the function.
*/

func makeCoffee(type: String = "Espresso") {
    print("Your \(type) is ready!")
}

makeCoffee()
makeCoffee(type: "Americano")
//makeCoffee("Latte")


/* Function: Variadic Parameters
- A variadic parameter accepts zero or more values of a specified type.
- In Swift, you can indicate a variadic parameter by inserting three period characters (...) after the parameter's type name.
*/

func sum2(numbers: Int...) -> Int{
    var total = 0
    for num in numbers{
        total += num
    }
    return total
}

let s2_7 = sum2(numbers: 1, 2, 3, 4, 5, 6, 7)
print(s2_7)

let s2_3 = sum2(numbers: 1, 2, 3)
print(s2_3)


/* Function: In-Out Parameters

 - In Swift, function parameters are constants by default. But with inout
 parameters, a function can change the value that was passed in, and those
 changes will persist after the function has finished! */

func doubleInPlace(num: inout Int){
    num *= 2
}

var myNum = 10
doubleInPlace(num: &myNum)
print(myNum)

/* Question 1: Fahrenheit to Celsius Converter

- Write a Swift function named convertToCelsius that takes a single
 argument, a Double representing a temperature in Fahrenheit. The
 function should return a Double representing the equivalent temperature
 in Celsius.
 
 Example Usage:
 
 */

//let tempInCelsius = convertToCelsius(fahrenheit: 98.6)
//print(tempInCelsius) // output should be 37.0

/* Question 2: Fibonacci Sequence Generator
 - Write a Swift function named generateFibonacci that takes a single argument, an Int n, and returns an array of Ints containing the first n numbers in the Fibonacci sequence.
 - The Fibonacci sequence starts with the numbers 0 and 1, and each subsequent number is the sum of the two preceding ones (0, 1, 1, 2, 3, 5, 8, ...).
 */


/*func generateFibonacci(n: Int) -> [Int] {
    // your code here
}
print(generateFibonacci(n: 6)) // Output should be [0, 1, 1, 2, 3, 5]
*/


/* Nested Functions
 - Declaration of Nested Functions: Nested functions, also known as Inner functions, are functions declared within other functions. Think of it like boxes inside. Here's a basic structure of a nested function:
 
 func outerFunction() {
    func innerFunction() {
        // code
    }
    // code
 }
 
 - In the above code, innerFunction() is nested inside outerFunction(). The innerFunction() is only visible within the scope it is defined, which means we can only call innerFunction() inside outerFunction(). Trying to call innerFunction() outside outerFunction() will throw an error.*/

func a(){
    func b(){
        print("Hello world! 🌎")
    }
    b()
}
a()
//b()

/*
 Use Cases for Nested Functions
 - Encapsulation: Nested functions are a way to hide functionality that isn’t necessary for the outside world to see or use.
 - Readability: Grouping related code together can make it much easier to understand.
 - Prevents namespace pollution: The scope of nested functions is limited to the enclosing function, which can prevent potential name collisions.
 
 */


/* This is a high-order function: a function that returns another function, and this other function returns an Int
 */
func makeIncrementer(incrementAmount: Int) -> () -> Int{
    var total = 0
    func incrementer() -> Int{
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())

let incrementByTen = makeIncrementer(incrementAmount: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())


/* Exercise 1: Nested Multiplier Function
 Objective: To understand the concept and usage of nested functions in Swift by implementing a function that multiplies two numbers.
 
 Description: Create a nested function called multiplier inside a function called calculate that takes two parameters a and b. The nested function multiplier should multiply a and b and return the result. Call the calculate function with any two numbers and print the result.
 
 */


func calculate(a: Int, b: Int) -> Int{
    func multiplier() -> Int{
        return a * b
    }
    var res = multiplier()
    return res
}

print(calculate(a: 5, b: 6))

/* Exercise 2: Cumulative Multiplication Function
Objective: To explore more advanced use-cases of variable capturing for maintaining state in nested functions.

 Description: Create a function called makeMultiplier that takes an integer parameter multiplyAmount. Inside it, define a nested function called multiplier that multiplies a running total (stored in the outer function) by multiplyAmount. The makeMultiplier function should return this nested function.

 You need to use high order function for this
 */


//let multiplyByThree = makeMultiplier(multiplyAmount: 3)
//print(multiplyByThree())
//print(multiplyByThree())
//print(multiplyByThree())


