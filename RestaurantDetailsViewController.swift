//
//  RestaurantDetailsViewController.swift
//  Agiru_RestaurantApp
//
//  Created by Agiru,Sai Kiran on 4/26/22.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {
    
    
    var items:RestDetails?

    @IBOutlet weak var ResImage: UIImageView!
    
    
    @IBOutlet weak var item1: UILabel!
    
    @IBOutlet weak var item2: UILabel!
    
    
    @IBOutlet weak var item3: UILabel!
    
    @IBOutlet weak var item4: UILabel!
    
    
    @IBOutlet weak var item5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ResImage.image = UIImage(named : (items?.image)!)
    }
    

    @IBAction func ocClickMenu(_ sender: Any) {
        
        item1.text = items?.item1
        item2.text = items?.item2
        item3.text = items?.item3
        item4.text = items?.item4
        item5.text = items?.item5

        
    }
    

}
