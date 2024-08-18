//
//  ContentView.swift
//  MovieSample
//
//  Created by specktro on 07/08/24.
//

import SwiftUI

// MARK: ContentView
/// The main view to show the `Movie` list
struct ContentView: View {
    // MARK: - Properties
    @State private var dataModel = MoviesDataModel()
    
    // MARK: - Body
    var body: some View {
        List {
            ForEach($dataModel.movies) { $movie in
                SmallCardView(title: movie.title, image: movie.image, isFavorite: $movie.isFavorite)
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button {
                            movie.isFavorite.toggle()
                        } label: {
                            Image(systemName: "heart")
                        }
                        .tint(.green)
                    }
            }
            .onDelete { indexSet in
                dataModel.movies.remove(atOffsets: indexSet)
            }
        }
        .listStyle(.plain)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}


