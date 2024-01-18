//
//  AllMoviesView.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import SwiftUI

struct AllMoviesView: View {
    @StateObject var moviesViewModel = MoviesViewModel()
    let columns = [
        GridItem(.adaptive(minimum: 150))
        ]
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(moviesViewModel.movies, id: \.id) { movie in
                        if movie.primaryImage != nil {
                            ZStack{
                                MovieView(movie: movie)
                            }
                        }
                        
                    }.navigationTitle("Favorites")
                }.padding(5)
                
                            }
                            
        }
    }
}

#Preview {
    AllMoviesView()
}
