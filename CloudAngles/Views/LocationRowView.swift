//
//  LocationRowView.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import SwiftUI

struct LocationRowView: View {
    let location: StarbucksLocation

    var body: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.headline)
            Text(location.address) 
                .font(.subheadline)
        }
    }
}
