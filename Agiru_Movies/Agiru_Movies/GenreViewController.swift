//
//  ViewController.swift
//  Agiru_Movies
//
//  Created by Agiru,Sai Kiran on 4/21/22.
//

import UIKit

class GenreViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movieArr.count;
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
            cell.textLabel?.text = movieArr[indexPath.row].category

            
            return cell
        }


    @IBOutlet weak var genreTableView: UITableView!
    
    var movieArr = movies
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Movies App"
                // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "movieSegue"{
                let destination = segue.destination as! MoviesViewController
                destination.details = movieArr[genreTableView.indexPathForSelectedRow!.row].movie

                destination.items = movieArr[(genreTableView.indexPathForSelectedRow?.row)!]
            }


}
}
