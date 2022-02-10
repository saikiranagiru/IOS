//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Agiru,Sai Kiran on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSem: UILabel!
    
  
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    let courses = [["img01","44555", "Network Security" , "Fall 2022"],
                   ["img02","44643", "IOS" , "Spring 2022"],
                   ["img03","44656", "Data Streaming" , "Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the first course details(image, courseNum, title, and sem)
        //previous button should be disabled
        /*
        displayImage.image = UIImage(named:courses[0][0])
        crsNum.text = courses[0][1]
        crsTitle.text = courses[0][2]
        crsSem.text = courses[0][3]*/
        
        updateUI(imageNumber)
        previousButton.isEnabled = false
    }
    
    
    
    @IBAction func previousButtonClicked(_ sender: UIButton) {
        
        nextButton.isEnabled = true
        imageNumber -= 1
        updateUI(imageNumber)
        
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
        // Update the UI
        imageNumber += 1
        updateUI(imageNumber)
        
        previousButton.isEnabled = true
        
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
    }
    
    func updateUI(_ imageNum: Int){
        displayImage.image = UIImage(named:courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        crsSem.text = courses[imageNum][3]
        
    }
    
}

