# SwiftUI-MVVM-Combine Sample App
## This project is a sample application built with SwiftUI, MVVM architecture, and Combine framework.

### Overview
- This sample app demonstrates how to fetch and display a list of movies from the movie database API. It uses the MVVM (Model-View-ViewModel) design pattern and Combine for handling asynchronous data.


https://github.com/hhajime/SwiftUI-MVVM-Combine/assets/36729917/2c2a5d6e-37bb-46cb-b15b-5cffa10e826c


### Features
- Fetch and display movies from an API
- Display movie details such as title and release date
- Handle image loading and caching

### Getting Started

Clone this repository:
```bash
1. Copy code
git clone https://github.com/yourusername/SwiftUI-MVVM-Combine.git
```
2. Open the project in Xcode.
3. change <_YOUR API KEY_> to real API(this app used API from the 'themoviedb')
4. Run the project in the iOS simulator or a real device.

### Requirements
iOS 14.0 or later
Xcode 12.0 or later
Swift 5 or later

### Libraries
SwiftUI
Combine

### Project Structure

- **ViewModel**
    - Contains `MovieListViewModel` that fetches the data from the API and prepares it for the View.

- **Model**
    - Contains the `Movies` model and `MovieResponse` model.

- **View**
    - Contains `MovieListView` which displays the list of movies.

- **Services/Utilities(Helpers)**
    - Contains `ImageLoader` and `ImageCache` for handling image loading and caching.

### Credit for:
[Anurag Pandey](https://levelup.gitconnected.com/swiftui-mvvm-building-a-movie-list-app-ab8264357239)


Feel free to contribute, and contact the owner for any questions.

hajime(JongMyeong Ha) 
contact@hajime.guru

License
This project is available under the MIT license. See the LICENSE file for more info.

This is a basic structure for a README. Feel free to add more sections or details according to your project's needs.
You can check out more details or instructions in [here](https://levelup.gitconnected.com/swiftui-mvvm-building-a-movie-list-app-ab8264357239)
