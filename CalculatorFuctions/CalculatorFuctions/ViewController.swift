//
//  ViewController.swift
//  CalculatorFuctions
//
//  Created by James Williams on 5/5/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 // new class ViewController
    
    var firstNumber = ""
    var secondNumber = ""
    
    var currentOperation = ""
    
    // each variable will be set as a string but is not set just yet
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    // this is an outlet for the variable display label which connects the code to the output of the calculator
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewdidload is used for customizing the appearence of a view. It means that all of your IBoutlets are ready and connected
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // deals with your memory.... default
        
        
        
    }
    @IBAction func pressedButton1(sender: UIButton)
        // this is an action that connectes all of your number buttons it means that when a button is pushed the event is sent
        {
        
            let number = sender.currentTitle!
            // this means that the number will stay the same as the current title that is displayed on the button
        
        if currentOperation.isEmpty {
    
    firstNumber += number
        // this means when there is nothing in the calculator field then the first number should show
            displayLabel.text = "\(firstNumber)"
            
        } else {
            secondNumber += number
            
            displayLabel.text = "\(secondNumber)"
            // this means that even when there is already a first number it should only show the second number selected
            
        }
        // println("Pressed Button " + sender.currentTitle!)
    }
    
    
    @IBAction func operatorPressed(sender: UIButton) {
        // this is the control that sends the event when the secondary buttons (=,.,+ etc) are selected
        let operation = sender.currentTitle!
        
        if operation != "=" { currentOperation = operation }
        else {
        // if the operation is not equal to the equal button then keep the current operation??
            
            switch currentOperation {
            
            case "+":
                
                let value = firstNumber.toInt()! + secondNumber.toInt()!
                // + (addition sign) let the value equal the first number added to the second
               
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
              displayLabel.text = "\(value)"
                // this just prints out the function in the field below so you can see the operation
                
            case "-":
                    
                // this means that the first number as an integer subtracted by the second number will give you your value
                let value = firstNumber.toInt()! - secondNumber.toInt()!
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                displayLabel.text = "\(value)"

                
                
            case "/":
                
                let value = Double(firstNumber.toInt()!) / Double(secondNumber.toInt()!)
                // for division a double is a Uint 64 ?? not sure why its used
                
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                displayLabel.text = "\(value)"

                
            
            case "*" :
                // setting the value as the first number multiplied by the second
                let value = firstNumber.toInt()! * secondNumber.toInt()!
                 println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                displayLabel.text = "\(value)"

                
                
                
            default :
                // set a default so it would show blahh instead of crash
                println("blah")
            }
            
                firstNumber = ""
                secondNumber = ""
                
                currentOperation = ""
                
                
            }
//        switch currentOperation {
//            case ".":
//            let value = firstnumber
//        }
        
            //        if operation == "+" {
            //            // add number
            //
            //        }
            //        if operation == "-" {
            //            // subtract number
            //        }
            //            if operation == "=" {
            //                // run equation
            //            }
            
        }
            }
    

