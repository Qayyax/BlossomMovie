//
//  ContentView.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                HomeView()
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                Text(Constants.upcomingString)
            }
            Tab(Constants.searchString, systemImage: Constants.upcomingIconString) {
                Text(Constants.searchString)
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIconString) {
                Text(Constants.downloadString)
            }
        }
    }
}

#Preview {
    ContentView()
}
