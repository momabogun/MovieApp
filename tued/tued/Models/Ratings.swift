//
//  Rating.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import Foundation



struct RatingsInResponse: Codable{
    let results: Ratings
}
struct Ratings: Codable{
    let averageRating: Double
    let numVotes: Int
}
