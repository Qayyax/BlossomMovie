//
//  HomeView.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-05.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
        }
    }
}

#Preview {
    HomeView()
}
