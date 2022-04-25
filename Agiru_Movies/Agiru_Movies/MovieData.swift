//
//  MovieData.swift
//  Agiru_Movies
//
//  Created by Agiru,Sai Kiran on 4/24/22.
//

import Foundation
import UIKit

struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot :String
    let cast :String
}



struct Genre{
    let category :String
    var movie:[Movie] = []
    
}


let movie1 = Genre(category:"Horror",movie:[Movie(title: "The Exorcist", image: UIImage(named: "movie1")!, releasedYear: "1973", movieRating: "8.1", boxOffice: "232.91M", moviePlot: "When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.", cast: "Ellen Burstyn, Max von Sydow, Linda Blair, Lee J. Cobb"),Movie(title: "Dawn of the Dead", image: UIImage(named: "movie2")!, releasedYear: "2004", movieRating: "7.3", boxOffice: "59.02M", moviePlot: "A nurse, a policeman, a young married couple, a salesman and other survivors of a worldwide plague that is producing aggressive, flesh-eating zombies, take refuge in a mega Midwestern shopping mall.", cast: "Sarah Polley, Ving Rhames, Mekhi Phifer, Jake Weber"),Movie(title: "Drag Me to Hell", image: UIImage(named: "movie3")!, releasedYear: "2009", movieRating: "6.6", boxOffice: "42.10M", moviePlot: "A loan officer who evicts an old woman from her home finds herself the recipient of a supernatural curse. Desperate, she turns to a seer to try and save her soul, while evil forces work to push her to a breaking point.", cast: " Alison Lohman, Justin Long, Ruth Livier, Lorna Raver"),Movie(title: "All I Need", image: UIImage(named: "movie4")!, releasedYear: "2016", movieRating: "4.1", boxOffice: "35.14M", moviePlot: "The paths of a desperate man and an imprisoned young woman cross unexpectedly in the den of a mysterious killer.", cast: "Caitlin Stasey, Markus Taylor, Leah McKendrick, Sorel Carradine"),Movie(title: "Legacies", image: UIImage(named: "movie5")!, releasedYear: "2018", movieRating: "7.4", boxOffice: "90.42M", moviePlot: "Hope Mikaelson, a tribrid daughter of a Vampire/Werewolf hybrid, makes her way in the world.", cast: "Danielle Rose Russell, Aria Shahghasemi, Quincy Fouse, Matthew Davis")])


let movie2 = Genre(category:"Comedy",movie:[Movie(title: "Rubber", image: UIImage(named: "movie6")!, releasedYear: "2010", movieRating: "5.7", boxOffice: "0.10M", moviePlot: "A homicidal car tire, discovering it has destructive psionic power, sets its sights on a desert town once a mysterious woman becomes its obsession.", cast: "Stephen Spinella, Roxane Mesquida, Wings Hauser, Jack Plotnick"),Movie(title: "Fright Night", image: UIImage(named: "movie7")!, releasedYear: "2011", movieRating: "6.4", boxOffice: "18.30M", moviePlot: "When a nice new neighbor moves in next door, Charley discovers that he is an ancient vampire who preys on the community. Can he save his neighborhood from the creature with the help of the famous 'vampire killer', Peter Vincent?", cast: "Anton Yelchin, Colin Farrell, David Tennant, Toni Collette"),Movie(title: "Warm Bodies", image: UIImage(named: "movie8")!, releasedYear: "2013", movieRating: "6.8", boxOffice: "66.38M", moviePlot: "After a highly unusual zombie saves a still-living girl from an attack, the two form a relationship that sets in motion events that might transform the entire lifeless world.", cast: "Nicholas Hoult, Teresa Palmer, John Malkovich, Lio Tipton"),Movie(title: "Ash vs Evil Dead", image: UIImage(named: "movie9")!, releasedYear: "2015", movieRating: "8.4", boxOffice: "25.32M", moviePlot: "Ash has spent the last thirty years avoiding responsibility, maturity, and the terrors of the Evil Dead until a Deadite plague threatens to destroy all of mankind and Ash becomes mankind's only hope.", cast: "Bruce Campbell, Ray Santiago, Dana DeLorenzo, Lucy Lawless"),Movie(title: "Tremors: A Cold Day in Hell", image: UIImage(named: "movie10")!, releasedYear: "2018", movieRating: "5", boxOffice: "0.14M", moviePlot: "The new sequel finds Burt Gummer, who's dying from Graboid poison, and his son Travis at a remote research station in Canada's Nunavut Territory, where they must go up against a new batch of Graboids to save Burt's life.", cast: "Jay Anstey, Alistair Moulton Black, Paul du Toit, Michael Gross")])


let movie3 = Genre(category:"Crime",movie:[Movie(title: "The Devil's Rejects", image: UIImage(named: "movie11")!, releasedYear: "2005", movieRating: "6.7", boxOffice: "17.04M", moviePlot: "The murderous, backwoods Firefly family take to the road to escape the vengeful Sheriff Wydell, who is not afraid of being as ruthless as his target.", cast: "id Haig, Sheri Moon Zombie, Bill Moseley, William Forsythe"),Movie(title: "The Road", image: UIImage(named: "movie12")!, releasedYear: "2011", movieRating: "5.6", boxOffice: "0.12M", moviePlot: "A 12 year old cold case is reopened when three teens are missing in an old abandoned road where a gruesome murder is left undiscovered for three decades.", cast: "Carmina Villaroel, Rhian Ramos, TJ Trinidad, Barbie Forteza"),Movie(title: "Alleluia", image: UIImage(named: "movie13")!, releasedYear: "2014", movieRating: "6.2", boxOffice: "0.01M", moviePlot: "Fervidly dark lovesick horror inspired by the real-life criminal duo, the Lonely Hearts Killers", cast: "Lola Dueñas, Laurent Lucas, Héléna Noguerra, Édith Le Merdy"),Movie(title: "Regression", image: UIImage(named: "movie14")!, releasedYear: "2015", movieRating: "5.6", boxOffice: "0.05M", moviePlot: "A detective and a psychoanalyst uncover evidence of a satanic cult while investigating a young woman's terrifying past.", cast: "Ethan Hawke, David Thewlis, Emma Watson, Dale Dickey"),Movie(title: "Jigsaw", image: UIImage(named: "movie15")!, releasedYear: "2017", movieRating: "5.7", boxOffice: "38.05M", moviePlot: "Bodies are turning up around the city, each having met a uniquely gruesome demise. As the investigation proceeds, evidence points to one suspect: John Kramer, the man known as Jigsaw, who has been dead for over 10 years.", cast: "Matt Passmore, Tobin Bell, Callum Keith Rennie, Hannah Emily Anderson")])



let movies = [movie1,movie2,movie3]

