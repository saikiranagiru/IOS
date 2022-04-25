//
//  ViewController.swift
//  MovieCVApp
//
//  Created by student on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovies(with: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "Movie title: \(movies[indexPath.row].title)"
        yearReleaseOutlet.text = "Movie relaese year: \(movies[indexPath.row].releasedYear)"
        ratingOutlet.text = "Movie rating: \(movies[indexPath.row].movieRating)"
        revenueOutlet.text = "Movie revenue: \(movies[indexPath.row].boxOffice)"
        
    }
  
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearReleaseOutlet: UILabel!
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    
    @IBOutlet weak var revenueOutlet: UILabel!
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }

    

}

