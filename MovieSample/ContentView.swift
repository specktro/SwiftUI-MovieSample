//
//  ContentView.swift
//  MovieSample
//
//  Created by specktro on 07/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                CardView(image: "wolverine_deadpool", releaseDate: "Release Date: 2024-07-24", title: "Deadpool & Wolverine", rating: "Rated B")
                CardView(image: "quiet_place", releaseDate: "Release Date: 2024-06-26", title: "A Quiet Place: Day One", rating: "Rated B")
                CardView(image: "despicable_me", releaseDate: "Release Date: 2024-06-20", title: "Despicable Me 4", rating: "Rated B")
                CardView(image: "inside_out", releaseDate: "Release Date: 2024-06-11", title: "Inside Out 2", rating: "Rated B")
            }
        }
    }
}

#Preview {
    ContentView()
}
