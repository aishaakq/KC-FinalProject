//
//  ViewController.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//


import CoreLocation
import UIKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate{

    let manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()

        GMSServices.provideAPIKey("AIzaSyCSMgiZedsCs4uFBdR-GkSvC3_0CVO35uU")


        print("License: \n\n\(GMSServices.openSourceLicenseInfo())")
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }

        let coordinate = location .coordinate
        let camera = GMSCameraPosition.camera(withLatitude: coordinate.latitude, longitude: coordinate.longitude, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: view.frame, camera: camera)
        view.addSubview(mapView)

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -coordinate.latitude, longitude: coordinate.longitude)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView

    }
}

