

import UIKit
import MapKit


final class SchoollAnnoation:NSObject , MKAnnotation {
  
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D ,title: String? , subtitle: String? ) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = title
        super.init()
    }
    
    var region : MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class ViewController: UIViewController  , CLLocationManagerDelegate{
 @IBOutlet weak var mapKitView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapKitView.delegate = self
        
        mapKitView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier )
        
        //Appventurez
        let appventurezCoordinate = CLLocationCoordinate2D(latitude: 28.6213, longitude:77.3879 )
        let appventurezAnnoation = SchoollAnnoation(coordinate: appventurezCoordinate, title: "Appventurez", subtitle: "Address")
        let kashmir = SchoollAnnoation(coordinate: CLLocationCoordinate2D(latitude: 34.1490875, longitude: 74.0789389), title: "Kahmir", subtitle: " hello")
       
        
        
        let mmmCoordinate = CLLocationCoordinate2D(latitude:26.7314, longitude:83.4332 )
        let mmmAnnoation = SchoollAnnoation(coordinate: mmmCoordinate, title: "MMM", subtitle: "MMM")
        mapKitView.addAnnotation(mmmAnnoation)
        mapKitView.addAnnotation(kashmir)
        mapKitView.addAnnotation(appventurezAnnoation)
        
       
      
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}


extension ViewController: MKMapViewDelegate {
    // 1
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // 2
        guard let annotation = annotation as? SchoollAnnoation else { return nil }
        // 3
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        // 4
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            // 5
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }
}

