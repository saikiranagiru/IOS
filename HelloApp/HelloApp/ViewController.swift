//
//  ViewController.swift
//  HelloApp
//
//  Created by Agiru,Sai Kiran on 1/20/22./Users/s543693/Documents/HelloApp/HelloApp/ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var gradeOutlet: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        
        //Read the data from the text box and store it in a variable
        
        var name = nameOutlet.text!
        var grade = gradeOutlet.text!
        
        displayLabel.text = "Hello, \(name)! and The Grade Achived is \(grade)."
        
        //Change the text display label with this format. Hello, name!
    }
    
}

