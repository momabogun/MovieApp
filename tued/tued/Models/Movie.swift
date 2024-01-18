//
//  Movie.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import Foundation
struct MovieResponse: Codable{
    let results: [Movie]
}

struct Movie: Codable{
    let id: String
    let titleText: TitleText
    let primaryImage: MovieImage?
    let releaseYear: ReleaseYear
}


struct ReleaseYear: Codable{
    let year: Int
}

struct TitleText: Codable{
    let text : String
}

struct MovieImage: Codable{
    let url: URL
}

