//
//  ViewController.swift
//  Favorites
//
//  Created by James Williams on 5/28/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var jFavorites: [PFObject] = []
    @IBOutlet weak var favoritesTableView: UITableView!
    
    @IBOutlet weak var myFavorite: UITextField!
    
    @IBAction func addFavorite(sender: AnyObject) {
        
        let newFavorite = PFObject(className: "Favorites")
        
        newFavorite["name"] = myFavorite.text
        newFavorite["user"] = PFUser.currentUser()
        newFavorite.saveInBackground()
        
        myFavorite.text = ""
        
        jFavorites.insert(newFavorite, atIndex: 0)
        //jFavorites.append(newFavorite)
        favoritesTableView.reloadData()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
        
        let query = PFQuery(className: "Favorites")
        query.orderByDescending("createdAt")
        query.findObjectsInBackgroundWithBlock { (objects, error) -> Void in
        
            self.jFavorites = objects as! [PFObject]
            self.favoritesTableView.reloadData()
        }
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jFavorites.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("favoriteCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = jFavorites[indexPath.row]["name"] as? String
        
        return cell
        
    }
}


