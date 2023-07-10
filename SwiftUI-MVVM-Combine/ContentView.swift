//
//  ContentView.swift
//  SwiftUI-MVVM-Combine
//
//  Created by Ha Jong Myeong on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MovieListViewModel()
    
    var body: some View {
        MovieListView(viewModel: viewModel)
    }
}
