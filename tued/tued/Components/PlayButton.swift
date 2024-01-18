//
//  PlayButton.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import SwiftUI

struct PlayButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            HStack{
                Image(systemName: "play.circle.fill")
                Text("Play")
                
            }
                .frame(maxWidth: .infinity)
                .font(.headline)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .foregroundColor(.white)
                .background(
                    Capsule().fill(.red)
                    )
            
        }
    }
}

#Preview {
    PlayButton(action: {})
}
