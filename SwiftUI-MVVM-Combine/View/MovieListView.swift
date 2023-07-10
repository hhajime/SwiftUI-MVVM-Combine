//
//  ContentView.swift
//  SwiftUI-MVVM-Combine
//
//  Created by Ha Jong Myeong on 2023/07/11.
//

import SwiftUI
import Combine

struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    let imageBaseURL = "https://image.tmdb.org/t/p/w500"
    
    var body: some View {
        NavigationView {
            List(viewModel.movies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                    if let posterPath = movie.posterPath, let url = URL(string: imageBaseURL + posterPath) {
                        AsyncImage(url: url, placeholder: { Image(systemName: "photo") }, image: { Image(uiImage: $0).resizable() })
                            .frame(width: 100, height: 150)
                    }
                    Text(movie.releaseDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Movies")
            .onAppear {
                viewModel.fetchMovies()
            }
        }
    }
}
