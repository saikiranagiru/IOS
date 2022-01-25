//
//  ViewController.swift
//  vowelTester
//
//  Created by Agiru,Sai Kiran on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        
        //Read the text
        var enteredText = textOutlet.text!
        //Check for vowel
        if(enteredText.contains("a") ||
            enteredText.contains("e") ||
            enteredText.contains("i") ||
            enteredText.contains("o") ||
            enteredText.contains("u")){
            displayLabel.text = "The text contains Vowel"
            
        }
        else{
            displayLabel.text = "The text does not contains Vowel"
        }
            
            
    }
    
}

