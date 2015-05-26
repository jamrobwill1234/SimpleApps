//
//  ViewController.swift
//  tictactoe
//
//  Created by James Williams on 5/8/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // this sets the subclass of the class ViewController as a UIView controller
   
    
    
  //  UIView.backgroundColor = UIColor(red:0.35, green:0.7, blue:0.89, alpha:1)
    
    
    
    var spaces: [[Player?]] = [
    // not sure what this means???
    [nil,nil,nil],
    [nil,nil,nil],
    [nil,nil,nil],
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    

    var currentPlayer: Player = .One
    
    
    @IBAction func buttonPressed(sender: TButton) {
        
        if sender.player != nil { return }
        // not sure what this means but this is the action for the circles to be pressed on the board
        
    
    
        sender.player = currentPlayer
        sender.setNeedsDisplay()
        // this means that whats in your view has to be redrawn
        spaces[sender.row][sender.col] = currentPlayer
        // not sure what this means?????
        println(spaces)
        
        checkForWinner()
//        
//        if currentPlayer == .One {
//           currentPlayer = .Two
//       } else{
//           currentPlayer = .One
//       }
        
        currentPlayer = (currentPlayer == .One) ? .Two : .One
    } //  this means if the current player number one is not number two then it is number one  switches the current players from one to two
    
    var possibilities = [
        [0,0,0,1,0,2],
        [1,0,1,1,1,2],
        [2,0,2,1,2,2],
        [0,0,1,0,2,0],
        [0,1,1,1,2,1],
        [0,2,1,2,2,2],
        [0,0,1,1,2,2],
        [0,2,1,1,2,0],
    ] // this is an array of all the possiblites of a point ??
    
    func checkForWinner() {
        
    for possibility in possibilities {
            
        let firstSpot = spaces[possibility[0]][possibility[1]]
        let secondSpot = spaces[possibility[2]][possibility[3]]
        let thirdSpot = spaces[possibility[4]][possibility[5]]
// This is a loop through the array to select the possiblities??
        
        if firstSpot == secondSpot && secondSpot == thirdSpot {
            
            if let winner = firstSpot {
            
          // this function allows you to select the three dots that will win the game
            println("player\(winner.hashValue + 1) wins")
                
            }
            
            
        }

        
        }
//        
//        var player1Wins = spaces[0][0] == spaces[0][1] && spaces[0][1] == spaces[0][2] && spaces[0][0] == .One
//        var player2Wins = spaces[0][0] == spaces[0][1] && spaces[0][1] == spaces[0][2] && spaces[0][0] == .Two
//        
//        if player1Wins {
//            println("Player One Wins!")
//        } else
//        
        
    
}



}
