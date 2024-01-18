//
//  MoviesRepository.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import Foundation
class MoviesRepository{
    
    
    
    static func fetchAllMovies() async throws -> [Movie] {
        
        let headers = [
            "X-RapidAPI-Key": ApiKeys.movieAPIKey,
            "X-RapidAPI-Host": ApiKeys.movieAPIHost
        ]
        
        guard let url = URL(string: "https://moviesdatabase.p.rapidapi.com/titles?titleType=movie&year=2023&limit=50") else {
            throw HTTPError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let result = try JSONDecoder().decode(MovieResponse.self, from: data)
        return result.results
        
    }
    
    
    
    
}
