//
//  BookingDetailsViewController.swift
//  Agiru_MoviesApp
//
//  Created by Agiru,Sai Kiran on 4/7/22.
//

import UIKit

class BookingDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var CustName: UILabel!
    
    @IBOutlet weak var MovieName: UILabel!
    
    @IBOutlet weak var NumofTickets: UILabel!
    
    @IBOutlet weak var TotalCost: UILabel!
    
    var movieName = ""
    var CustomerName = ""
    var numoftic = ""
    var finalprice = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CustName.text = CustName.text! + " " + CustomerName
        MovieName.text = MovieName.text! + " " + movieName
        NumofTickets.text = NumofTickets.text! + " " + numoftic
        TotalCost.text = TotalCost.text! + " " + finalprice
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
