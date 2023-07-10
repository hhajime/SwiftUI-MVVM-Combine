//
//  MovieListViewModel.swift
//  SwiftUI-MVVM-Combine
//
//  Created by Ha Jong Myeong on 2023/07/11.
//

import SwiftUI

class MovieListViewModel: ObservableObject {
    @Published var movies: [Movies] = []
    
    // API call to retrieve movies
    func fetchMovies() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=<YOUR API KEY>") else {
            print("error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let response = try JSONDecoder().decode(MovieResponse.self, from: data)
                DispatchQueue.main.async {
                    self.movies = response.results
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
