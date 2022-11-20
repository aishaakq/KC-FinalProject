//
//  mapview.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 19/11/2022.
//

import SwiftUI
// 1.
import MapKit


import SwiftUI
import MapKit
struct MapView: View {
        
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.3547776,
                            longitude: 47.6620627),
                            latitudinalMeters: 9000,
                        longitudinalMeters: 100000)
    
    
    private let places = [
        PointOfInterest(name: "Diva Gym - Women", latitude: 29.2575039, longitude:  48.0754733),
        PointOfInterest(name: "Spark Athletic Center - Women", latitude: 29.2575039, longitude:  48.0754733),
        PointOfInterest(name: "elite fitness", latitude: 29.2575039, longitude:  48.0049927),
        PointOfInterest(name: "Flare fitness - Women", latitude: 29.376935, longitude:  47.9777777),
        PointOfInterest(name: "Platinum Health Club", latitude: 29.3912743, longitude:  47.9907141),
        PointOfInterest(name: "Oxygen Gym", latitude: 29.2654569, longitude:  48.0826172),
        PointOfInterest(name: "Miss Platinum - Women", latitude: 29.2635096, longitude:  48.0851024),
        PointOfInterest(name: "iFitness gym", latitude: 29.3347744, longitude:  47.3534683),
        PointOfInterest(name: "Loop gym", latitude: 29.3347744, longitude:  47.3534683),
        PointOfInterest(name: "Go fitness gym", latitude: 29.1212945, longitude:  48.0301315),
        PointOfInterest(name: "Arifjan Crossfit", latitude: 29.6966389, longitude: 47.4243958),
        PointOfInterest(name: "CCCRiyah Camp", latitude: 28.9802717, longitude: 48.1738989),
        PointOfInterest(name: "BodyZone Fitness", latitude: 29.0821416, longitude: 48.1291658),
        PointOfInterest(name: "Classico Field", latitude: 29.0828092, longitude: 48.069111)
    ]
    
    
    var body: some View {
        
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapAnnotation(coordinate: place.coordinate) {
                ZStack{
                    VStack{
                        Image(systemName: "circle.fill")
                            .font(.title)
                            .foregroundColor(.green)
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .font(.caption)
                            .foregroundColor(.green)
                            .offset(x: 0, y: -5)
                    }
                    
                    HStack{
                        Spacer()
                        Text(place.name)
                            .font(.system(size: 6))
                            .fontWeight(.bold)
                            .padding([.bottom], 9)
                        Spacer()
                    }
                    
                    
                    
                    
                }
                  }
            
        }.edgesIgnoringSafeArea(.all)
    }
    
    struct PlaceAnnotationView: View {
      let title: String

      var body: some View {
        VStack(spacing: 0) {
          Text(title)
            .font(.callout)
            .padding(5)
            .background(Color(.white))
            .opacity(0.3)
            .cornerRadius(10)

          Image(systemName: "mappin.circle.fill")
            .font(.title)
            .foregroundColor(.red)

          Image(systemName: "arrowtriangle.down.fill")
            .font(.caption)
            .foregroundColor(.red)
            .offset(x: 0, y: -5)
        }
      }
    }
    
    struct PointOfInterest: Identifiable {
      var id = UUID()
      let name: String
      let latitude: Double
      let longitude: Double
      
      var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
      }
    }

    }
    
    struct Mapview_Previews: PreviewProvider{
        static var previews: some View{
            MapView()
        }
    }
    


