//
//  MapView.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var location: StarbucksLocation
    @Binding var showMapView: Bool
    @Binding var selectedLocation: StarbucksLocation?

    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )), showsUserLocation: false, userTrackingMode: .none, annotationItems: [location]) { location in
            MapMarker(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), tint: .blue)
        }
        .id(location.id)
    }
}
