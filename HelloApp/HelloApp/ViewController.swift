//
//  ViewController.swift
//  HelloApp
//
//  Created by Agiru,Sai Kiran on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        
        //Read the data from the text box and store it in a variable
        
        var name = nameOutlet.text!
        
        displayLabel.text = "Hello, \(name)!"
        
        //Change the text display label with this format. Hello, name!
    }
    
}

