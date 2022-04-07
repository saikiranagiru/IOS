//
//  ViewController.swift
//  Agiru_MoviesApp
//
//  Created by Agiru,Sai Kiran on 4/7/22.
//

import UIKit

class MovieShowsViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var ticketCost: UILabel!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var details = [["Avatar","Avatar","12"],["NoTimeToDie","No Time To Die","10"],["Shangchi","Shang Chi","15"],["Joker","Joker","20"]]
    
    var imageNumber = 0;

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(imageNumber)
        
        previousButton.isEnabled = false
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        imageNumber += 1
                updateUI(imageNumber)
                //previous button should be enabled
                previousButton.isEnabled = true
                //Once the user reach the end of array, the next button should be disabled.
                if(imageNumber == details.count-1){
                    nextButton.isEnabled = false
                }
    }
    
    
    @IBAction func previousButtonClicked(_ sender: UIButton) {
        
        nextButton.isEnabled = true
                //update the course details by decrementing image number
                imageNumber -= 1
                updateUI(imageNumber)
                //Once you reach the begining of the array, previous button should be disabled.
                if(imageNumber == 0){
                    previousButton.isEnabled = false
                }
    }
    
    func updateUI(_ imageNum:Int){
            displayImage.image = UIImage(named: details[imageNum][0])
        movieName.text = details[imageNum][1]
        ticketCost.text = details[imageNum][2]
          
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var destination = segue.identifier
        if destination == "BookingSegue"{
            var identifier = segue.destination as! ResultViewController
            
            identifier.amount = AmountOutlet.text!
            
            identifier.disc = DiscountRate.text!
            
            identifier.final = String(priceafterDisc)
            
            
        }
    }
    


}

