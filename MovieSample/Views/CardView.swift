//
//  CardView.swift
//  MovieSample
//
//  Created by specktro on 07/08/24.
//

import SwiftUI

// MARK: CardView
/// A view to represent the entire `Movie` information
struct CardView: View {
    // MARK: - Properties
    var image: String
    var releaseDate: String
    var title: String
    var rating: String
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 200.0, alignment: .center)
                .clipped()
            
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

// MARK: - Previews
#Preview {
    CardView(image: "quiet_place", releaseDate: "Release Date: 2024-06-26", title: "A Quiet Place: Day One", rating: "Rated B")
}
