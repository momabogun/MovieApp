//
//  MyListButton.swift
//  tued
//
//  Created by Momcilo Bogunovic on 13.01.24.
//

import SwiftUI

struct MyListButton: View {
    let action: () -> Void
    var body: some View {
        
            Button(action: action) {
                HStack{
                    Image(systemName: "plus")
                    Text("My List")
                    
                }
                .frame(maxWidth: .infinity)
                .font(.headline)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .foregroundColor(.white)
                .background(
                    Capsule()
                        .stroke()
                    )
                
                
            }
        
    }
}

#Preview {
    MyListButton(action: {})
}
