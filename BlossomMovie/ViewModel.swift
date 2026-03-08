//
//  ViewModel.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-07.
//

import Foundation

@Observable
class ViewModel {
    enum FetchStatus {
        case notStarted
        case fetching
        case success
        case failed(underlyingError: Error)
    }
    private(set) var homeStatus: FetchStatus = .notStarted
    private let dataFetcher = DataFetcher()
    var trendingMovies: [Title] = []
    
    func getTitles() async {
        homeStatus = .fetching
        do {
            let titles = try await dataFetcher.fetchTitles(for: "movie")
            self.trendingMovies = titles
            homeStatus = .success
        } catch {
            print(error)
            homeStatus = .failed(underlyingError: error)
        }
    }
}
