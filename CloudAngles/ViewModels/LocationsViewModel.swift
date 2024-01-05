//
//  LocationsViewModel.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [StarbucksLocation] = []

    func fetchLocations() {
        guard let url = URL(string: "https://nominatim.openstreetmap.org/search?format=json&q=Starbucks") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                if let error = error {
                    print("Error: \(error.localizedDescription)")
                }
                return
            }

            do {
                let result = try JSONDecoder().decode([NominatimResult].self, from: data)
                DispatchQueue.main.async {
                    self.locations = result.map { StarbucksLocation(from: $0) }
                }
            } catch {
                print("Decoding Error: \(error.localizedDescription)")
            }
        }

        task.resume()
    }
}
