//
//  MapView.swift
//  swift-ui-landmarks
//
//  Created by Waldron, Dustin on 10/3/20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var name: String
    var locationCoordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: locationCoordinate, span: span)
        uiView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationCoordinate

        annotation.title = name
        uiView.addAnnotation(annotation)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(
            name: landmarkData[0].name,
            locationCoordinate: landmarkData[0].locationCoordinate
        )
    }
}
