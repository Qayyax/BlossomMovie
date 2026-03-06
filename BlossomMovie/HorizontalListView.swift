//
//  HorizontalListView.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-06.
//

import SwiftUI

struct HorizontalListView: View {
    let header = Constants.trendingMovieString
    let titles = [Constants.testTitleURL, Constants.testTitleURL2, Constants.testTitleURL3]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(titles, id:\.self) {title in
                        AsyncImage(url: URL(string: title)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 200)
                    }
                }
            }
        }
        .frame(height: 250)
        .padding(10)
    }
}

#Preview {
    HorizontalListView()
}
