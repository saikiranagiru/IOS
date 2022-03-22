//
//  Result View ControllerViewController.swift
//  DiscountAppMulti
//
//  Created by Agiru,Sai Kiran on 3/22/22.
//

import UIKit

class Result_View_ControllerViewController: UIViewController {

    @IBOutlet weak var EnteredAmountOutlet: UILabel!
    
    
    @IBOutlet weak var EnteredDiscRateOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscountOutlet: UILabel!
    
    var amount = ""
    var discrate = ""
    var priceafterdisc = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        EnteredAmountOutlet.text = EnteredAmountOutlet.text! + amount
        EnteredDiscRateOutlet.text = EnteredDiscRateOutlet.text! + discrate
        
        PriceAfterDiscountOutlet.text = PriceAfterDiscountOutlet.text! + priceafterdisc

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
