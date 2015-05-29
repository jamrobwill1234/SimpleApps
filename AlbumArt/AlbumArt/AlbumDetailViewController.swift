//
//  ViewController.swift
//  AlbumArt
//
//  Created by James Williams on 5/29/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit
import AFNetworking

class AlbumDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var albumInfo: [String:AnyObject]!
    

    @IBOutlet weak var albumNamelabel: UILabel!
   
    @IBOutlet weak var artistNameLabel: UILabel!
        

    @IBOutlet weak var trackstableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        albumNamelabel.text = albumInfo["collectionName"] as? String
        
        artistNameLabel.text = albumInfo["artistName"] as? String
        
        
        if let albumID = albumInfo["collectionID"] as? Int {
        
            var requestManager = AFHTTPRequestOperationManager()
            
            requestManager.GET(itunesLookupAPI + "?entity=song&id=", parameters: nil, success: { (request, data) -> Void in
                
                let info = data as! [String:AnyObject]
                
                self.tracks = info["results"] as! [[String:AnyObject]]
                self.tracks.removeAtIndex(0)
                self.trackstableview.reloadData()
                
                //self.collectionView?.reloadData()
                
                }) { (request, error) -> Void in
                    
                    println(error)
            }
        }
    
        trackstableview.dataSource = self
        trackstableview.delegate = self
        
        println()
    }

    var tracks: [[String:AnyObject]] = []
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPAth: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("trackCell", forIndexPath: indexPAth) as! TrackTableViewCell
        
        cell.trackInfo = tracks[indexPAth.row]
        
        return cell
        
    }

}

