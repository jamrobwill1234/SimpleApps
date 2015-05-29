//
//  TrackTableViewCell.swift
//  AlbumArt
//
//  Created by James Williams on 5/29/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    
    var trackInfo: [String:AnyObject]!

    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var toggleSong: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
