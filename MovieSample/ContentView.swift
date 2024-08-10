//
//  ContentView.swift
//  MovieSample
//
//  Created by specktro on 07/08/24.
//

import SwiftUI

struct ContentView: View {
    var movieTitles = ["Deadpool & Wolverine", "A Quiet Place: Day One", "Despicable Me 4", "Inside Out 2", "House of Ga'a", "The Convert", "The Garfield Movie", "No negociable", "Escape from the 21st Century", "Justice League: Crisis on Infinite Earths Part Three", "Descendants: The Rise of Red"]
    
    var movieImages = ["wolverine_deadpool", "quiet_place", "despicable_me", "inside_out", "house_of_cha", "the_convert", "garfield", "non_negotiable", "escape_21st_century", "justice_league", "descendants"]
    
    var body: some View {
        List {
            ForEach(movieTitles.indices, id: \.self) { index in
                SmallCardView(title: movieTitles[index], image: movieImages[index])
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}


