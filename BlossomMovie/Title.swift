//  Title.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-07.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

// Modelling this based on the result we want from the JSON
struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}
