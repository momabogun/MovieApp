//
//  ActorsRepository.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import Foundation
class ActorsRepository {
    
    
    static func fetchActors(movieId: String) async throws -> Ratings {
        
        let headers = [
            "X-RapidAPI-Key": ApiKeys.movieAPIKey,
            "X-RapidAPI-Host": ApiKeys.movieAPIHost
        ]
        
        guard let url = URL(string: "https://moviesdatabase.p.rapidapi.com/titles/\(movieId)/ratings") else {
            throw HTTPError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let result = try JSONDecoder().decode(RatingsInResponse.self, from: data)
        return result.results
        
    }
}
