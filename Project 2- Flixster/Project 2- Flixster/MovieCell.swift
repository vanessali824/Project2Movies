//
//  MovieCell.swift
//  Project 2- Flixster
//
//  Created by Vanessa Li on 3/3/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Configure cell's UI for given movie
    func configure(with movie: Movie){
        movieTitle.text = movie.original_title
        movieDescription.text = movie.overview

        //Load image
        Nuke.loadImage(with: movie.poster_path, into: movieImageView)
    }

}
