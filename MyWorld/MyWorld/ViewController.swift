//
//  ViewController.swift
//  MyWorld
//
//  Created by James Williams on 5/21/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

import UIKit
import MapKit

class MyAnnotation : MKPointAnnotation {
    
    var venueIndex: Int!
}

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var myMapView: MKMapView!
    
    var lManager = CLLocationManager()
    
    var allVenues: [[String:AnyObject]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lManager.requestWhenInUseAuthorization()
        lManager.delegate = self
        
        myMapView.showsUserLocation = true
        myMapView.userTrackingMode = .Follow
        myMapView.delegate = self
        
        lManager.startUpdatingLocation()
        
        
    }
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        
        if let location = locations.first as? CLLocation {
            
            println("latitude \(location.coordinate.latitude) longitude \(location.coordinate.longitude)")
            
            requestVenuesWithLocation(location, completion: { (venues) -> () in
                
                println(venues)
                
                
                self.allVenues = venues as! [[String:AnyObject]]
                
                for (index,venue) in enumerate(venues as! [[String:AnyObject]]) {
                    
                    
                    
                    if let locationInfo = venue["location"] as? [String:AnyObject] {
                        
                        
                        if let lat = locationInfo["lat"] as? Double, let lng =
                            locationInfo["lng"] as? Double {
                                
                                let coordinate = CLLocationCoordinate2DMake(lat, lng)
                                
                                let annotation = MyAnnotation()
                                
                                annotation.title = venue["name"] as? String
                                annotation.venueIndex = index
                                
                                annotation.coordinate = coordinate
                                
                                self.myMapView.addAnnotation(annotation)
                                
                                
                        }
                        
                        
                    }
                    
                }
                
            })
            
            lManager.stopUpdatingLocation()
            
            
        }
        
    }
    
    
    func requestVenuesWithLocation(location: CLLocation, completion: (venues: [AnyObject]) -> ()) {
        
        let API_URL = "https://api.foursquare.com/v2/"
        let CLIENT_ID = "4FP4Y43MH4HNTJ2YS1HXONYQ2KYJLMPR0UZE1Y2C2ZLMD3Z5"
        let CLIENT_SECRET = "ZDOAJYGNN5HG4T4SLZSKQJ1VEGNY1U5NAFTMTXURNA5LDWOQ"
        
        let endpoint = API_URL + "venues/search?client_id=\(CLIENT_ID)&client_secret=\(CLIENT_SECRET)&ll=\(location.coordinate.latitude),\(location.coordinate.longitude)&v=20150101"
        
        
        if let url = NSURL(string: endpoint) {
            
            let request = NSURLRequest(URL: url)
            
            NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: { (response, data, error) -> Void in
                
                if let returnedInfo = NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers, error: nil) as? [String:AnyObject] {
                    
                    println(returnedInfo)
                    
                    if let responseInfo = returnedInfo["response"] as? [String:AnyObject]{
                        
                        
                        
                        if let venuesInfo = responseInfo["venues"] as? [AnyObject] {
                            
                            completion(venues: venuesInfo)
                            
                        }
                        
                    }
                    
                }
                
            })
            
            
        }
        
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if annotation is MKUserLocation { return nil }
        
        var annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "annotation")
        annotationView.canShowCallout = true
        
        annotationView.pinColor = MKPinAnnotationColor.Green
        
        var button = UIButton.buttonWithType(UIButtonType.DetailDisclosure) as! UIButton
        annotationView.rightCalloutAccessoryView = button
        
        button.tag = (annotation as! MyAnnotation).venueIndex
        
        button.addTarget(self, action: "showMoreInfo:", forControlEvents: UIControlEvents.TouchUpInside)
        
        return annotationView
    }
    
    func showMoreInfo(sender: UIButton) {
        
        
        var detailVC = UIViewController()
        
        var venue = allVenues[sender.tag]
        
        detailVC.view.backgroundColor = UIColor.whiteColor()
        
        detailVC.navigationItem.title = venue["name"] as? String
        var box = UIView(frame: CGRectMake(20, 20, 100, 100)
            
            box.backgroundColor = UIColor.blueColor()
            
            self.navigationController?.pushViewController(detailVC, animated: true)
        
        
        
    }
}












