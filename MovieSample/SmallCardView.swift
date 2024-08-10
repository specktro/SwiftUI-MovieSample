//
//  SmallCardView.swift
//  MovieSample
//
//  Created by specktro on 09/08/24.
//

import SwiftUI

struct SmallCardView: View {
    var title: String
    var image: String
    
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
        }
    }
}

#Preview {
    SmallCardView(title: "Justice League: Crisis on Infinite Earths Part Three", image: "inside_out")
}
