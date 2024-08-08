//
//  CardView.swift
//  MovieSample
//
//  Created by Miguel Angel Gómez Rivero on 07/08/24.
//

import SwiftUI

struct CardView: View {
    var image: String
    var releaseDate: String
    var title: String
    var rating: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(releaseDate)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    Text(title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.primary)
                        .lineLimit(3)
                    
                    Text(rating)
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
    CardView(image: "wolverine_deadpool", releaseDate: "Release Date: 2024-07-24", title: "Deadpool & Wolverine", rating: "Rated B")
}
