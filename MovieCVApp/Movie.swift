//
//  Movie.swift
//  CollectionViewDemo
//
//  Created by student on 4/4/22.
//

import Foundation
import UIKit
struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
}
let movies : [Movie] = [
    Movie(title:"Boyhood",image:UIImage(named: "boyhood")!,releasedYear: "2014",movieRating: "7.9",boxOffice: "57.3M"),
    Movie(title:"Mad Max: Fury Road",image:UIImage(named: "mad max")!,releasedYear: "2015",movieRating: "8.1",boxOffice: "375.6M"),
    Movie(title:"Moonlight",image:UIImage(named: "moonlight")!,releasedYear: "2016",movieRating: "7.4",boxOffice: "65.3M"),
    Movie(title:"Inception",image:UIImage(named: "inception")!,releasedYear: "2010",movieRating: "8.8",boxOffice: "836.8"),
    Movie(title:"Slumdog Millionaire",image:UIImage(named: "slumdog millionaire")!,releasedYear: "2008",movieRating: "8",boxOffice: "378.1M"),
    Movie(title:"The Dark Knight",image:UIImage(named: "the dark knight")!,releasedYear: "2008",movieRating: "9",boxOffice: "1.005 B"),
    Movie(title:"The Social Network",image:UIImage(named: "the social network")!,releasedYear: "2010",movieRating: "7.7",boxOffice: "224.9M"),
    Movie(title:"The Wolf of Wall Street",image:UIImage(named: "the wolf of wall street")!,releasedYear: "2013",movieRating: "8.2",boxOffice: "392M"),
    Movie(title:"There Will be Blood",image:UIImage(named: "there will be blood")!,releasedYear: "2007",movieRating: "8.2",boxOffice: "76.2M"),
    Movie(title:"Wall-E",image:UIImage(named: "walle")!,releasedYear: "2008",movieRating: "8.4",boxOffice: "521.3M"),
]

