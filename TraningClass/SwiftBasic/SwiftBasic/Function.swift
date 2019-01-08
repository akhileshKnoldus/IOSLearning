//
//  Function.swift
//  SwiftBasic
//
//  Created by Akhilesh Gupta on 03/01/19.
//  Copyright © 2019 appventurez. All rights reserved.
//

import UIKit

class Function: UIViewController {

    var complitionHandler: ((Int)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    
    @IBAction func tappedFunctionButton(_ sender: Any) {
         showOutput()
    }
    
    // MARk: - Variadic Parameters
   class func arithmeticMean(_ number: Double...) -> Double {
        var total:Double = 0
        for number in number {
            total += number
        }
        
        return total/Double(number.count)
    }

   var result = arithmeticMean(1, 2, 3, 4, 5)
    
    
    // MARK: - In-Out Parameters
    
    //Function parameters are constants by default
    
    //Trying to change the value of a function parameter from within the body of that function results in a compile-time error. This means that you can’t change the value of a parameter by mistake. If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
    
//    func swapTwoInts(_ firstNumber : Int , _ secondNumber : Int) {
//        let temp = firstNumber
//        firstNumber = secondNumber
//        secondNumber = temp
//        print("firstNumber = \(firstNumber) and Secondnumber = \(secondNumber)")
//    }
//
    
    func swapTwoInts(_ firstNumber : inout Int , _ secondNumber : inout Int) {
        let temp = firstNumber
        firstNumber = secondNumber
        secondNumber = temp
        print("firstNumber = \(firstNumber) and Secondnumber = \(secondNumber)")
    }
  
    func showOutput(){
        print(result)
 
        //swapTwoInts(&10, &20)
        var firstNo = 3
        var secondNo = 107
        swapTwoInts(&firstNo, &secondNo)
        functionTypes()
        functionTypeAsParameter()
        doSomething()
        doSomething1()
    }
    
    
    // MARK: - Using Function Types
    
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
   
    func functionTypes(){
        
        var mathFunction: (Int, Int) -> Int = addTwoInts
        
        print("Result: \(mathFunction(2, 3))")
    }
    
    // MARK: - Function Types as Parameter Types

    func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
        print("Result: \(mathFunction(a, b))")
    }
    
    func functionTypeAsParameter(){
         printMathResult(addTwoInts, 3, 5)
    }
    
    // MARK: - Function Types as Parameter Types

}

extension Function  {
    
    // MARK: - Closoure
    
    //Global functions are closures that have a name and do not capture any values.
  //  Nested functions are closures that have a name and can capture values from their enclosing function.
   // Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.

    
    
    // MARK: - The Sorted Method
    //The original array is not modified by the sorted(by:) method.
    //The closure expression examples below use the sorted(by:) method to sort an array of String values in reverse alphabetical order. Here’s the initial array to be sorted:
    
    
    
    
    
    // MARK: - Trailing Closures
    
    
    
    // MARK: - Escaping Closures

    func getSumOf(array:[Int], handler: ((Int)->Void)) {
        //step 2
        var sum: Int = 0
        for value in array {
            sum += value
        }
        //step 3
        handler(sum)
    }
        func doSomething() {
        //setp 1
        self.getSumOf(array: [16,756,442,6,23]) { [weak self](sum) in
            print("This is example of nonescaping" ,sum)
            //step 4, finishing the execution
        }
    }
    
    // MARK: - Escaping Closures
    //var complitionHandler: ((Int)->Void)?
    func getSumOf1(array:[Int], handler: @escaping ((Int)->Void)) {
        //step 2
        //here I'm taking for loop just for example, in real case it'll be something else like API call
        var sum: Int = 0
        for value in array {
            sum += value
        }
        //step 3
        self.complitionHandler = handler
    }
    
    func doSomething1() {
        //setp 1
        self.getSumOf(array: [16,756,442,6,23]) { [weak self](sum) in
            print("Escapin example " , sum)
            //step 4, finishing the execution
        }
    }

    
    // MARK: - Autoclosure
    
//    func printTest(_ result: () -> Void) {
//        print("Before")
//        result()
//        print("After")
//    }
    
    func printTest(_ result: @autoclosure () -> Void) {
        print("Before")
        result()
        print("After")
    }
    
   
    
    func Autoclouser(){
       // printTest({ print("Hello") })
         printTest(print("Hello"))
    }
    

}


