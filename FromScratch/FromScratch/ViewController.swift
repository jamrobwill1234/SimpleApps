//
//  ViewController.swift
//  FromScratch
//
//  Created by James Williams on 5/7/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.view.layer.cornerRadius = self.view.frame.size.width / 2;
        self.view.clipsToBounds = true
        
        view.layer.borderColor = UIColor.yellowColor().CGColor
        view.layer.borderWidth = 5
        

        
        
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
     
        for touch in touches as! Set<UITouch> {
            
            let location = touch.locationInView(view)
            
            println("x = \(location.x) and y = \(location.y)")
            
            var circle = InLoveWTheCocoa()
            
            view.addSubview(circle)
            circle.center = location
            
            
                        
        }
    }
    

}
// Normal Mode
// Make box a circle
// Randomize the circle size (width will be same as height)
// Randomize the color of the circle
// Randomize the alpha of the circle

// Middle Mode
// Transition to alpha 0 after 1 seconds UIView animation

//Hard Mode
// Randomize whether it is round or not
// Randomize between full circle --> rounded square --> square 
// Randomize rotation of box

