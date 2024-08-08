//
//  ContentView.swift
//  MovieSample
//
//  Created by Miguel Angel Gómez Rivero on 07/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("wolverine_deadpool")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Release Date: 2024-07-24")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Text("Deadpool & Wolverine")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                    
                    Text("Rated B")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10.0)
        .overlay {
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1.0)
        }
        .padding([.top, .horizontal])
    }
}

#Preview {
    ContentView()
}
