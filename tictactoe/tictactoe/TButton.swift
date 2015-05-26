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
// group of operations setting one and two which refers back to the view controller 


@IBDesignable class TButton: UIButton {
    // the cass TButton is set as a UIButton
    @IBInspectable var row: Int = 0
    @IBInspectable var col: Int = 0
    // not sure what this means?
    var player: Player?
// this is an option just in case there is a player or not??

    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        UIColor.blackColor().set()
        
        var insetRect = CGRectInset(rect, 1, 1)
        // this is creating the shape
        
        CGContextStrokeEllipseInRect(context, insetRect)
        // this is making the circle inside the shape??
        
        if let playeerUnwrapped = player {
            
            
        UIColor.blueColor().set()
        // this sets player ones coler as blue
            if playeerUnwrapped == .Two {
// One equal sign is setting and two equals is testing :Optionals
                
                UIColor.redColor().set()
            // this sets player two colors as red
            }
        
        var smallCircleRect = CGRectInset(rect, 40, 40)
        // this sets the parameters for the circle that will be drawn
        CGContextFillEllipseInRect(context, smallCircleRect)
        // not sure the diffence between inset and fill 
        }
    }


}
