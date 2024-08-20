//
//  Movie.swift
//  MovieSample
//
//  Created by specktro on 17/08/24.
//

import Foundation

// MARK: Movie struct
/// A simple struct to represent the movie information
struct Movie: Identifiable {
    // MARK: - Properties
    let id = UUID().uuidString
    var image: String
    var releaseDate: String
    var title: String
    var rating: String
    var isFavorite: Bool = false
}
