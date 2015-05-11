//
//  TButton.swift
//  tictactoe
//
//  Created by James Williams on 5/8/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

enum Player  {
    
    case One
    case Two
}



@IBDesignable class TButton: UIButton {
    
    @IBInspectable var row: Int = 0
    @IBInspectable var col: Int = 0
    
    var player: Player?


    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        UIColor.blackColor().set()
        
        var insetRect = CGRectInset(rect, 1, 1)
        
        
        CGContextStrokeEllipseInRect(context, insetRect)
        
        
        if let playeerUnwrapped = player {
            
            
        UIColor.blueColor().set()
        
            if playeerUnwrapped == .Two {
// One equal sign is setting and two equals is testing :Optionals
                
                UIColor.redColor().set()
                
            }
        
        var smallCircleRect = CGRectInset(rect, 40, 40)
        
        CGContextFillEllipseInRect(context, smallCircleRect)
        
        }
    }


}
