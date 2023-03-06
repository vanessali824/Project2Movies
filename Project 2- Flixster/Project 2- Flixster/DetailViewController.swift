//
//  DetailViewController.swift
//  Project 2- Flixster
//
//  Created by Vanessa Li on 3/3/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    //property to store movie object
    var movie: Movie!

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var voteAvg: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //Load image
        Nuke.loadImage(with: movie.poster_path, into: movieImageView)
        
        //set labels
        movieTitle.text = movie.original_title
        movieDescription.text = movie.overview
        voteAvg.text = String(movie.vote_average)
        voteCount.text = String(movie.vote_count)
        popularityLabel.text = String(movie.popularity)
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
