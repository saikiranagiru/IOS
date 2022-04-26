//
//  MoviesViewController.swift
//  Agiru_Movies
//
//  Created by Agiru,Sai Kiran on 4/21/22.
//

import UIKit

class MoviesViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
          
        cell.assignMovie(with: details[indexPath.row])
        //cell.assignMovie(with: movies[indexPath.row]) //details!.movie[indexPath.row])
                
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return details.count
    }
    
    
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    var details:[Movie] = []
    var items : Genre?
    

     
        
    
      
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: " + details[indexPath.row].title
        movieRatingLabel.text = "Movie Rating: " + details[indexPath.row].movieRating
        movieBoxOfficeLabel.text = "Box Office Collection: $" + details[indexPath.row].boxOffice
        movieYearLabel.text = "Movie Released Year: " + details[indexPath.row].releasedYear
        moviePlotLabel.text = "Plot: " +  details[indexPath.row].moviePlot
        movieCastLabel.text = "Cast: " + details[indexPath.row].cast
        
        }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = items?.category
    

        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }
    

    

}
