//
//  ViewController.swift
//  CalculatorFuctions
//
//  Created by James Williams on 5/5/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstNumber = ""
    var secondNumber = ""
    
    var currentOperation = ""
    
    
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    @IBAction func pressedButton1(sender: UIButton)
        {
        
            let number = sender.currentTitle!
        
        if currentOperation.isEmpty {
    
    firstNumber += number
        
            displayLabel.text = "\(firstNumber)"
            
        } else {
            secondNumber += number
            
            displayLabel.text = "\(secondNumber)"
            
        }
        // println("Pressed Button " + sender.currentTitle!)
    }
    
    // ASKJO about how to take numbers back out how to break connections
    
    @IBAction func operatorPressed(sender: UIButton) {
        
        let operation = sender.currentTitle!
        
        if operation != "=" { currentOperation = operation }
        else {
            
            
            switch currentOperation {
            
            case "+":
                
                let value = firstNumber.toInt()! + secondNumber.toInt()!
                
               
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
              displayLabel.text = "\(value)"
                
                case "-":
                    
                //do subtraction
                let value = firstNumber.toInt()! - secondNumber.toInt()!
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                displayLabel.text = "\(value)"

                
                
            case "/":
                
                let value = Double(firstNumber.toInt()!) / Double(secondNumber.toInt()!)

                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                displayLabel.text = "\(value)"

                
            
            case "*" :
                let value = firstNumber.toInt()! * secondNumber.toInt()!
                 println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                displayLabel.text = "\(value)"

                
                
                
            default :
                // blah
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
    

