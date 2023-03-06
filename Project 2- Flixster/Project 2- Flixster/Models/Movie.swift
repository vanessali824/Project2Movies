//
//  Movie.swift
//  Project 2- Flixster
//
//  Created by Vanessa Li on 3/2/23.
//

import Foundation
//Movie model struct
struct Movie{
    let original_title: String
    let overview: String
    let poster_path: URL
    
    //Detail properties
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

extension Movie{
    //an array of mock Movies
    static var mockMovies: [Movie] = [
        Movie(original_title: "Knock at the Cabin",
              overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
              vote_average: 6.5,
              vote_count: 639,
              popularity: 4083.809
             ),
        Movie(original_title: "Black Panther: Wakanda Forever",
              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
              vote_average: 7.4,
              vote_count: 3684,
              popularity: 2782.773
             ),
        Movie(original_title: "Puss in Boots: The Last Wish",
              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
              vote_average: 8.5,
              vote_count: 4128,
              popularity: 2378.726
             ),
        Movie(original_title: "Plane",
              overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
              vote_average: 6.9,
              vote_count: 707,
              popularity: 2266.231
             ),
        Movie(original_title: "Huesera",
              overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/original/1mZcxuL4GLUvPdEXC4iZPjG2EO3.jpg")!,
              vote_average: 6.5,
              vote_count: 34,
              popularity: 1611.092
             ),
        
    ]
}
