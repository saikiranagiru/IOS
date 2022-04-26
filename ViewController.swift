//
//  ViewController.swift
//  Agiru_RestaurantApp
//
//  Created by Agiru,Sai Kiran on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
                cell.textLabel?.text = resArr[indexPath.row].name
                return cell
    }
    

    @IBOutlet weak var restaurantTableView: UITableView!
    
    var rest = Restarant()
    
    var resArr = restaurants
    
    var items : Restarant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "detailsSegue"{
                let destination = segue.destination as! RestaurantDetailsViewController
                destination.items = resArr[restaurantTableView.indexPathForSelectedRow!.row].details

            }
        }


}

