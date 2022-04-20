//
//  ViewController.swift
//  Agiru_GroceryApp
//
//  Created by Sai kiran Agiru on 4/12/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocerysArr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = grocerysArr[indexPath.row].section
        return cell
    }
    
    var grocery = Grocery()
    
    var grocerysArr = grocerys

    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Grocery Sections"
        // Do any additional setup after loading the view.
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            destination.items = grocerysArr[(grocerySectionsTableView.indexPathForSelectedRow?.row)!]
//            destination.secname = grocerysArr[(grocerySectionsTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

