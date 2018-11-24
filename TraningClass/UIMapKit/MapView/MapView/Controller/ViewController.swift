//
//  ViewController.swift
//  MapView
//
//  Created by Akhilesh Gupta on 22/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    //Step 1
    
    private let locationManager = CLLocationManager()
    private  var currentCordinate = CLLocationCoordinate2D()
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurationLocationServices()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func configurationLocationServices(){
        
        // Delegates
        locationManager.delegate = self
        
        let status = CLLocationManager.authorizationStatus()
        
        // Request for Location
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        }
        else if status == .authorizedAlways || status == .authorizedWhenInUse {
           beginLocationUpdate(locationManager: locationManager)
        }
        
    }
    
    private func zoomToLatestLocation(with coordinate : CLLocationCoordinate2D) {
        let zoomRegion = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000)
        mapView.setRegion(zoomRegion, animated: true)
        
    }
    
    private func  beginLocationUpdate(locationManager : CLLocationManager ){
        mapView.showsUserLocation = true
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }

}

extension ViewController : CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Did get Latest Location")
        guard let latestLoaction = locations.first else { return }
        
        if currentCordinate == nil {
            zoomToLatestLocation(with: latestLoaction.coordinate)
        }
        currentCordinate = latestLoaction.coordinate
        
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("The status change")
        if status == .authorizedAlways || status == .authorizedWhenInUse {
            beginLocationUpdate(locationManager: locationManager)
        }
    }
}

