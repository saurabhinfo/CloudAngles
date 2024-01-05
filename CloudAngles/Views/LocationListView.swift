//
//  LocationListView.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

// LocationListView.swift

import SwiftUI

struct LocationListView: View {
    @ObservedObject var viewModel: LocationsViewModel
    @State private var selectedLocation: StarbucksLocation?
    @State private var showMapView: Bool = false

    var body: some View {
        NavigationView {
            List(viewModel.locations) { location in
                NavigationLink(destination: MapView(location: location, showMapView: $showMapView, selectedLocation: $selectedLocation)) {
                    LocationRowView(location: location)
                }
            }
            .onAppear(perform: viewModel.fetchLocations)
            .navigationBarTitle("Starbucks Locations")
        }
    }
}

