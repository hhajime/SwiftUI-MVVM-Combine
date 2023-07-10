//
//  MoviesModel.swift
//  SwiftUI-MVVM-Combine
//
//  Created by Ha Jong Myeong on 2023/07/11.
//

struct Movies: Codable, Identifiable {
    let id: Int
    let title: String
    let overview: String
    let releaseDate: String
    let posterPath: String?
    let adult: Bool
    let originalLanguage: String
    let originalTitle: String
    let popularity: Double
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case releaseDate = "release_date"
        case posterPath = "poster_path"
        case adult
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case popularity
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}


struct MovieResponse: Codable {
    let results: [Movies]
}
