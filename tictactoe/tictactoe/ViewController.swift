//
//  ViewController.swift
//  tictactoe
//
//  Created by James Williams on 5/8/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    
  //  UIView.backgroundColor = UIColor(red:0.35, green:0.7, blue:0.89, alpha:1)
    
    
    
    var spaces: [[Player?]] = [
    
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
        
        
    
    
        sender.player = currentPlayer
        sender.setNeedsDisplay()
        
        spaces[sender.row][sender.col] = currentPlayer
        
        println(spaces)
        
        checkForWinner()
//        
//        if currentPlayer == .One {
//           currentPlayer = .Two
//       } else{
//           currentPlayer = .One
//       }
        
        currentPlayer = (currentPlayer == .One) ? .Two : .One
    }
    
    var possibilities = [
        [0,0,0,1,0,2],
        [1,0,1,1,1,2],
        [2,0,2,1,2,2],
        [0,0,1,0,2,0],
        [0,1,1,1,2,1],
        [0,2,1,2,2,2],
        [0,0,1,1,2,2],
        [0,2,1,1,2,0],
    ]
    
    func checkForWinner() {
        
    for possibility in possibilities {
            
        let firstSpot = spaces[possibility[0]][possibility[1]]
        let secondSpot = spaces[possibility[2]][possibility[3]]
        let thirdSpot = spaces[possibility[4]][possibility[5]]

        
        if firstSpot == secondSpot && secondSpot == thirdSpot {
            
            if let winner = firstSpot {
            
            
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
