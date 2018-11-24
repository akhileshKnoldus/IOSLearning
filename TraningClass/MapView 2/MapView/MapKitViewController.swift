//
//  MapKitViewController.swift
//  MapView
//
//  Created by Akhilesh Gupta on 22/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//
import MapKit
import UIKit

class MapKitViewController: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var mapKit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let appventiureLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(28.6213, 77.3879)
        let region : MKCoordinateRegion = MKCoordinateRegionMake(appventiureLocation, span)
        mapKit.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = appventiureLocation
        annotation.title = "Appventurez"
        annotation.subtitle = "Appventurez Address"
        mapKit.addAnnotation(annotation)
        
        let mmmLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(26.7314,83.4332)
        let region2 : MKCoordinateRegion = MKCoordinateRegionMake(mmmLocation, span)
        mapKit.setRegion(region2, animated: true)
        
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = mmmLocation
        annotation2.title = "MMM"
        annotation2.subtitle = "mmm Gorkhpur"
        mapKit.addAnnotation(annotation2)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    
}
