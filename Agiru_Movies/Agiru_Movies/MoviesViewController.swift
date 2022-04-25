//
//  MoviesViewController.swift
//  Agiru_Movies
//
//  Created by Agiru,Sai Kiran on 4/21/22.
//

import UIKit

class MoviesViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
     
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return movies.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
          
        cell.assignMovie(with: details[indexPath.row])
        //cell.assignMovie(with: movies[indexPath.row]) //details!.movie[indexPath.row])
                
                return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            assignMovieDetails(index: indexPath)
        }
    
    
        
        func assignMovieDetails(index: IndexPath){
            movieNameLabel.text = "Movie title: \(details!.movie[index.row].title)"
        }
    
    var details : Movie
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }
    

    

}
