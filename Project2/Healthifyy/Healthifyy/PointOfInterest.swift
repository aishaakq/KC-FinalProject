//
//  PointOfInterest.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 19/11/2022.
//

import Foundation
import MapKit

struct PointOfInterest: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
