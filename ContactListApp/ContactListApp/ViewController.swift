//
//  ViewController.swift
//  ContactListApp
//
//  Created by Agiru,Sai Kiran on 4/19/22.
//

import UIKit
import FirebaseDatabase


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contactNames.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //create a cell
            
            let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "ContactNames", for: indexPath)


            
            //populate the data
            cell.textLabel?.text = contactNames[indexPath.row]
            
            //return cell
            return cell
        }
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    var contactNames : [String]  = []
    var contacts = NSDictionary()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
    }
    
    func fetchData(){
            //Create the reference
            let databaseRef = Database.database().reference()
            
            //Get the data using the method observeSingleEvent
            databaseRef.observeSingleEvent(of: .value) { snapshot in
                self.contacts = snapshot.value as! NSDictionary
                self.contactNames = self.contacts.allKeys as! [String]
                self.tableViewOutlet.reloadData();
                
                print(self.contacts)
                
            }
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transistion = segue.identifier
            if transistion == "contactDetailsSegue"{
                let destination = segue.destination as! ResultViewController
                let contactClicked = contactNames[(tableViewOutlet.indexPathForSelectedRow?.row)!]
                //destination.demot = "Hello"
                for (key, value) in self.contacts{
                    if key as! String == contactClicked{
                        for (key1, value1) in value as! [String:Any]{
                            if key1 == "email"{
                                destination.email = value1 as! String
                            }
                            else if key1 == "phoneNum"{
                                destination.phoneNum = value1 as! Int
                            }
                        }
                    }
                    print(key)//String
                    print(value)//Dictionary
                }
                
               
                
                
            }




}
         
}

