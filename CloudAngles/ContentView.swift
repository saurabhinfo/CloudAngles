//
//  ContentView.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = LocationsViewModel()

      var body: some View {
          LocationListView(viewModel: viewModel)
      }
}

#Preview {
    ContentView()
}
