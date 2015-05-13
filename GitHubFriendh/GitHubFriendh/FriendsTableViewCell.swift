//
//  FriendsTableViewCell.swift
//  GitHubFriendh
//
//  Created by James Williams on 5/13/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var friendNameLabel: UILabel!
    
    @IBOutlet weak var reposButton: UIButton!
    
    @IBOutlet weak var gistsButton: UIButton!
    
    var friendInfo: [String: AnyObject?]! {
        
        didSet {
            friendNameLabel.text = friendInfo["name"] as? String
            
            let repoCount = friendInfo["public_repos"] as! Int
            reposButton.setTitle("Repos \(repoCount)", forState: .Normal)
            
            let gistCount = friendInfo["public_gists"] as! Int
            gistsButton.setTitle("Gists \(gistCount)", forState: .Normal)
            
            let avatarURL = friendInfo["avatar_url"] as! String
            
            let url = NSURL(string: avatarURL)!
            
            let data = NSData(contentsOfURL: url)!
            
            let image = UIImage(data: data)
    
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
