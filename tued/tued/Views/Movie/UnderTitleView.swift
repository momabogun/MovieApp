//
//  UnderTitleView.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import SwiftUI

struct UnderTitleView: View {
    init(movie: Movie) {
        self._ratingsViewModel = StateObject(wrappedValue: RatingsViewModel(id: movie.id))
        self.movie = movie
    }
    let movie: Movie
    @StateObject var ratingsViewModel: RatingsViewModel
    var body: some View {
        VStack{
            HStack{
                HStack{
                    Text(String(ratingsViewModel.ratings?.averageRating ?? 0.0))
                    Image(systemName: "star.leadinghalf.filled")
                    Text(String(ratingsViewModel.ratings?.numVotes ?? 0) + " votes")
                }
                Spacer()
                
                Text(String(movie.releaseYear.year))
                
            }.font(.subheadline)
            
            HStack{
                PlayButton(action: {})
                MyListButton(action: {})
            }
        }
    }
}

