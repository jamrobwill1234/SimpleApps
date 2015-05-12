//
//  ListTableViewCell.swift
//  HighPriority
//
//  Created by James Williams on 5/11/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

let priorityColors = [
UIColor.redColor(),
UIColor.orangeColor(),
UIColor.yellowColor()
]

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var itemStrikeThrough: UIView!
    @IBOutlet weak var itemLabel: UILabel!
    
    var itemInfo: [String:AnyObject]! {
    //didset is a property observer and will run each time you set a property
        
        didSet {
            
            itemLabel.text = itemInfo["name"] as? String
            itemStrikeThrough.hidden = !(itemInfo["completed"] as! Bool) //! (not) using before a bool reverses the process
            
            backgroundColor = priorityColors[itemInfo["priority"] as! Int]
            
        }
    }
    // a way to pass dictionary onto the cell 
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        itemInfo["completed"] = !(itemInfo["completed"] as! Bool)
        
        if itemInfo["completed"] as! Bool {
            
            itemStrikeThrough.hidden = false
            backgroundColor = UIColor.lightGrayColor()
            
        } else {
                
            itemStrikeThrough.hidden = true
            backgroundColor = priorityColors[itemInfo["priority"] as! Int]
            
        }
    }


    }








