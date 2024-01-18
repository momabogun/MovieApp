//
//  MovieView.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import SwiftUI

struct MovieView: View {
    let movie : Movie
    var body: some View {
        NavigationStack{
            
            NavigationLink(destination: MovieDetailView(movie: movie)){
                VStack{
                    AsyncImage(url: movie.primaryImage?.url) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        } placeholder: {
                           Image(systemName: "dsa")
                        }
                        .frame(width: 180, height: 250)
                        .background(.gray)
                        .cornerRadius(25.0)
                        
                    }
                }
            }
            
        }
        
        
        
        
        
    }
    
    
    
    
    



