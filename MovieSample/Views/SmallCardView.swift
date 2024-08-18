//
//  SmallCardView.swift
//  MovieSample
//
//  Created by specktro on 09/08/24.
//

import SwiftUI

// MARK: SmallCardView
/// A small view to represent the entire `Movie` information
struct SmallCardView: View {
    // MARK: - Properties
    var title: String
    var image: String
    @Binding var isFavorite: Bool
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 35.0, height: 35.0, alignment: .center)
                .clipShape(Circle())
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .foregroundColor(isFavorite ? .red : .gray)
        }
    }
}

// MARK: - Previews
#Preview {
    SmallCardView(title: "Justice League: Crisis on Infinite Earths Part Three", image: "inside_out", isFavorite: .constant(true))
}
