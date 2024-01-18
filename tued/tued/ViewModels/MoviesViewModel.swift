//
//  MoviesViewModel.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import Foundation
@MainActor
class MoviesViewModel: ObservableObject{
    
    init(){
        fetchData()
    }
    
    @Published var movies = [Movie]()
    
    
    func fetchData(){
        Task{
            do{
                self.movies = try await MoviesRepository.fetchAllMovies()
            } catch {
                print("Request failed with error: \(error)")
            }
        }
    }
}
