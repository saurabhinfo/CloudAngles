//
//  LocationModel.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import Foundation

struct StarbucksLocation : Identifiable {
    let id = UUID()
    let placeId: Int
    let name: String
    let address: String
    let latitude: Double
    let longitude: Double
    let boundingBox: [String]
}

extension StarbucksLocation {
    init(from nominatimResult: NominatimResult) {
        self.placeId = nominatimResult.placeID
        self.name = nominatimResult.name.rawValue
        self.address = nominatimResult.displayName
        self.latitude = Double(nominatimResult.lat) ?? 0.0
        self.longitude = Double(nominatimResult.lon) ?? 0.0
        self.boundingBox = nominatimResult.boundingbox
    }
}
