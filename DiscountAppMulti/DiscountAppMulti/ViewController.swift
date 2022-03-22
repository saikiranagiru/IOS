//
//  ViewController.swift
//  DiscountAppMulti
//
//  Created by Agiru,Sai Kiran on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func CalcDiscountButton(_ sender: Any) {
        
        var amount = Double(AmountOutlet.text!)
        var discountrate = Double(DiscountRateOutlet.text!)
        
        priceAfterDiscount = amount! - (amount!*discountrate!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! Result_View_ControllerViewController
            
            destination.amount = AmountOutlet.text!
            destination.discrate = DiscountRateOutlet.text!
            destination.priceafterdisc = String(priceAfterDiscount)
        }
    }
    
    
}

