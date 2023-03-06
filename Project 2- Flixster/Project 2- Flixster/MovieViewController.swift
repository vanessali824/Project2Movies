//
//  ViewController.swift
//  Project 2- Flixster
//
//  Created by Vanessa Li on 3/2/23.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //get cell with identifier "MovieCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        //get movie corresponding to tableView row
        let movie = movies[indexPath.row]
        
        //configure cell with associated movie
        cell.configure(with: movie)
        
        //return cell for display in tableView
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //array of movies
    var movies: [Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movies = Movie.mockMovies
        print(movies)
        
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected movie to the detail view controller
        if let cell = sender as? UITableViewCell,
           //Get the index path of the cell from the table view
        let indexPath = tableView.indexPath(for: cell),
        //Get the detail view controller
        let detailViewController = segue.destination as? DetailViewController {
            
            //Use the index path to get the associated movie
            let movie = movies[indexPath.row]
            
            //Set the movie on the detail view controller
            detailViewController.movie = movie
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}

