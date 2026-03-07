//
//  Errors.swift
//  BlossomMovie
//
//  Created by Abdul-Qayyum Olatunji on 2026-03-07.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "The file was not found."
        case .dataLoadingFailed(underlyingError: let error):
            return "Failed to load data with error: \(error.localizedDescription)"
        case .decodingFailed(underlyingError: let error):
            return "Failed to decode data with error: \(error.localizedDescription)"
        }
    }
}

enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlyingError: Error)
    case missingConfig
    case urlBuldFailed
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "The URL session returned an invalid response with error: \(error.localizedDescription)"
        case .missingConfig:
            return "The API configuration is missing."
        case .urlBuldFailed:
            return "Failed to build the URL."
        }
    }
}
