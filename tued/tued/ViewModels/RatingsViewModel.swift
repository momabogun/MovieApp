//
//  RatingViewModel.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import Foundation
class RatingsViewModel: ObservableObject{
    
    
    
    
    init(id: String){
        self.id = id
        
        fetchRatings()
    }
    
    @Published var ratings : Ratings?
    
    
    let id : String
    
    
    func fetchRatings(){
        Task{
            do{
                self.ratings = try await RatingsRepository.fetchRatings(movieId: id)
            } catch {
                print("Request failed with error: \(error)")
            }
        }
    }
    
}
