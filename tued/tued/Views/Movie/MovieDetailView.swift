//
//  MovieDetailView.swift
//  tued
//
//  Created by Momcilo Bogunovic on 12.01.24.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        VStack{
            AsyncImage(url: movie.primaryImage?.url) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                } placeholder: {
                   Image(systemName: "pencil")
                }.frame(height: 300)
            HStack{
                VStack(alignment: .leading){
                    Text(movie.titleText.text)
                        .font(.title)
                        .bold()
                    UnderTitleView(movie: movie)
                    Text(movie.id)
                }
                
            }.padding(8).background{
                Color.black
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width).foregroundStyle(.white).background{
            Color.black
        }.ignoresSafeArea()
        
    }
}


