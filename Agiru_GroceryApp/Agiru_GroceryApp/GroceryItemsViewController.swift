//
//  GroceryItemsViewController.swift
//  Agiru_GroceryApp
//
//  Created by Sai kiran Agiru on 4/12/22.
//


import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocerysArr.count
    }
    
    var items : Grocery?
 
//    var secname : Grocery?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = items!.items_Array[indexPath.row].itemName
        return cell
        
    }
    var grocery = GroceryItem()

    var grocerysArr = grocerys
    

    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = items?.section
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            destination.details = items!.items_Array[(groceryItemsTableView.indexPathForSelectedRow?.row)!]
        }
   

}
}
