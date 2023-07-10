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
    
    var body: some View {
        NavigationView {
            List(viewModel.movies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
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
