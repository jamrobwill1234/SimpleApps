//
//  ListTableViewController.swift
//  HighPriority
//
//  Created by James Williams on 5/11/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

enum Priority {

case High
case Medium
case Low
}

class ListTableViewController: UITableViewController {
   // [String]
  // [String:String or AnyObject] is dictionary which includes a key so when you search for it by name timecreated etc
    
    var listItems: [[String:AnyObject]] = [
    
        [
            "name" : "Sleep",
            "timeCreated" : NSDate(),
            "priority" : 0,
            "completed" : false
        ],
        
        [
            "name" : "Get Dog Food",
            "timeCreated" : NSDate(),
            "priority" : 1,
            "completed" : false
        ],
        
        [
            "name" : "Cook Food",
            "timeCreated" : NSDate(),
            "priority" : 2,
            "completed" : false
        ],

        
        [
            "name" : "Wash the car",
            "timeCreated" : NSDate(),
            "priority" : 1,
            "completed" : false
        ],

        
    
    ]
    
    @IBOutlet weak var itemNameField: UITextField!
    
    @IBAction func createItem(sender: AnyObject) {
       
        var itemInfo = [
        
            "name" : itemNameField.text,
            "timeCreated" : NSDate(),
            "priority" : 0,
            "completed" : false
        
        ]
        
        listItems.append(itemInfo)
        tableView.reloadData()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
         //listItems.count Bases rows off of number of dictionaries you have
        return listItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listCell", forIndexPath: indexPath) as! ListTableViewCell
// list cell comes from the main storyboard where we set the indetifier
        // Configure the cell...
     
        cell.itemInfo = listItems[indexPath.row]
        
        return cell
        
        
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
