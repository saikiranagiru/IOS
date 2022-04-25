//
//  MovieCollectionViewCell.swift
//  Agiru_Movies
//
//  Created by Agiru,Sai Kiran on 4/21/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    

    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    func assignMovie(with movie:Movie){
        imageViewOutlet.image = movie.image
    }
}

