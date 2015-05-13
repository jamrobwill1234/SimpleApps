//
//  GithubRequest.swift
//  GitHubFriendh
//
//  Created by James Williams on 5/13/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit

class GithubRequest: NSObject {
    
    class func getInfoWithEndpoint(endpoint: String) -> AnyObject? {
        
        
        if let url = NSURL(string: endpoint) {
            let request = NSURLRequest(URL: rul)
            println(request)
            
            if let data = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error: nil) {
                
                println(data)
                
                
            }
            
            
        }
        
        
        
        
        
        
        
        
        
        return nil
    }
   
}
