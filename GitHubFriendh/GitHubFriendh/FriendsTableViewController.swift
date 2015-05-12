//
//  FriendsTableViewController.swift
//  GitHubFriendh
//
//  Created by James Williams on 5/12/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    @IBOutlet weak var friendNameField: UITextField!
    
    var friends: [[String:AnyObject?]] = [
    
            
        [
    
            "login": "jamrobwill1234",
            "id": 11762656,
            "avatar_url": "https://avatars.githubusercontent.com/u/11762656?v=3",
            "gravatar_id": "",
            "url": "https://api.github.com/users/jamrobwill1234",
            "html_url": "https://github.com/jamrobwill1234",
            "followers_url": "https://api.github.com/users/jamrobwill1234/followers",
            "following_url": "https://api.github.com/users/jamrobwill1234/following{/other_user}",
            "gists_url": "https://api.github.com/users/jamrobwill1234/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/jamrobwill1234/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/jamrobwill1234/subscriptions",
            "organizations_url": "https://api.github.com/users/jamrobwill1234/orgs",
            "repos_url": "https://api.github.com/users/jamrobwill1234/repos",
            "events_url": "https://api.github.com/users/jamrobwill1234/events{/privacy}",
            "received_events_url": "https://api.github.com/users/jamrobwill1234/received_events",
            "type": "User",
            "site_admin": false,
            "name": "James Williams",
            "company": "1990",
            "blog": "",
            "location": "United States",
            "email": "",
            "hireable": false,
            "bio": nil,
            "public_repos": 1,
            "public_gists": 0,
            "followers": 8,
            "following": 8,
            "created_at": "2015-04-01T23:10:08Z",
            "updated_at": "2015-05-11T13:07:40Z"
        ]
 
            
            
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    
    @IBAction func addFriend(sender: AnyObject) {
        
            
    let endpoint = "https://api.github.com/users/\(friendNameField.text)?client_id=18c2e67eaf44f4a60b76&client_secret=5528dd41089fd0a5de62e7927b849075b65463a0"
        
        println(endpoint)
        
        if let url = NSURL(string: endpoint) {
// safe way of unwrapping
            let request = NSURLRequest(URL: url)
            
            if let data = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error: nil) {
                
                if let friendInfo = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? [String:AnyObject] {
                    
                    println(friendInfo)
                
                friends.insert(friendInfo, atIndex: 0)
                    
                tableView.reloadData() //refreshes your table view controller
                    
                    
            }
            }
        
        }
        
        
        friendNameField.text = ""
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return friends.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("friendCell", forIndexPath: indexPath) as! UITableViewCell

        cell.textLabel?.text = friends[indexPath.row]["name"] as? String
        
        [cell.imageView setImageWithURL:[NSURL URLWithString:@"https://avatars.githubusercontent.com/u/11762656?v=3"]
            
            placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        
        return cell
            
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            
            friends.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
