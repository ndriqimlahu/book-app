//
//  BookMapViewController.swift
//  Book App
//
//  Created by Ndriqim Lahu on 5/2/21.
//  Copyright © 2021 Ndriqim Lahu. All rights reserved.
//

import UIKit
import MapKit

class BookMapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMapView()
        _ = getMyLocation()
    }
    
    func setupMapView() {
        mapView.delegate = self
    }
    
    @IBAction func findPlace(_ sender: Any) {
        getDestinationFromUser()
    }
    
    func getMyLocation() -> MKPointAnnotation {
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
            
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.delegate = self
            locationManager.startUpdatingLocation()
        }
        
        let myLocation = MKPointAnnotation()
        //myLocation.coordinate = locationManager.location!.coordinate
        myLocation.coordinate = CLLocationCoordinate2D(latitude: 42.65714, longitude: 21.14805)
        myLocation.title = "I am here"
        mapView.addAnnotation(myLocation)
        
        return myLocation
    }
    
    func getDestinationFromUser() {
        let destination = textField.text
        
        if destination == "Prishtina" || destination == "prishtina" {
            mapView.removeOverlays(mapView.overlays)
            mapView.showAnnotations([getMyLocation(), getPrishtinaLocation()], animated: true)
            drawPathFromMeToDestination(myLocation: getMyLocation(), destLocation: getPrishtinaLocation())
        } else if destination == "Vushtrri" || destination == "vushtrri" {
            mapView.removeOverlays(mapView.overlays)
            mapView.showAnnotations([getMyLocation(), getVushtrriLocation()], animated: true)
            drawPathFromMeToDestination(myLocation: getMyLocation(), destLocation: getVushtrriLocation())
        } else if destination == "Ferizaj" || destination == "ferizaj" {
            mapView.removeOverlays(mapView.overlays)
            mapView.showAnnotations([getMyLocation(), getFerizajLocation()], animated: true)
            drawPathFromMeToDestination(myLocation: getMyLocation(), destLocation: getFerizajLocation())
        } else {
            let alert = UIAlertController(title: "Na vjen keq!", message: "Destinacioni i kerkuar nuk gjindet!\nJu lutem provoni perseri!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    func getPrishtinaLocation() -> MKPointAnnotation {
        let prishtina = MKPointAnnotation()
        prishtina.coordinate = CLLocationCoordinate2D(latitude: 42.65078, longitude: 21.16220)
        prishtina.title = "Prishtina"
        mapView.addAnnotation(prishtina)
            
        return prishtina
    }
    
    func getVushtrriLocation() -> MKPointAnnotation{
        let vushtrri = MKPointAnnotation()
        vushtrri.coordinate = CLLocationCoordinate2D(latitude: 42.82596, longitude: 20.96898)
        vushtrri.title = "Vushtrri"
        mapView.addAnnotation(vushtrri)
        
        return vushtrri
    }
    
    func getFerizajLocation() -> MKPointAnnotation{
        let ferizaj = MKPointAnnotation()
        ferizaj.coordinate = CLLocationCoordinate2D(latitude: 42.36734, longitude: 21.15519)
        ferizaj.title = "Ferizaj"
        mapView.addAnnotation(ferizaj)
            
        return ferizaj
    }
        
    func drawPathFromMeToDestination(myLocation: MKPointAnnotation, destLocation: MKPointAnnotation){
        let myPlaceMark = MKPlacemark(coordinate: myLocation.coordinate)
        let destPlaceMark = MKPlacemark(coordinate: destLocation.coordinate)
            
        let myLocationMapItem = MKMapItem(placemark: myPlaceMark)
        let destLocationMapItem = MKMapItem(placemark: destPlaceMark)
            
        let directionRequest = MKDirections.Request()
        directionRequest.source = myLocationMapItem
        directionRequest.destination = destLocationMapItem
        directionRequest.requestsAlternateRoutes = true
        directionRequest.transportType = .automobile
            
        let direction = MKDirections(request: directionRequest)
        direction.calculate { (response, error) in
            if(error == nil) {
                for route in response!.routes {
                    self.mapView.addOverlay(route.polyline, level: .aboveLabels)
                }
            }
        }
    }

    var count = 0
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.red
        renderer.lineWidth = 5.0
        count += 1
            
        return renderer
    }
}
