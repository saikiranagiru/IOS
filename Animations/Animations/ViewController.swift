//
//  ViewController.swift
//  Animations
//
//  Created by Agiru,Sai Kiran on 3/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var HappyOutlet: UIButton!
    
    
    @IBOutlet weak var SadOutlet: UIButton!
    
    @IBOutlet weak var AngryOutlet: UIButton!
    
    
    @IBOutlet weak var ShakeMeOutlet: UIButton!
    
    
    @IBOutlet weak var ShowOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func HappyButtonClicked(_ sender: UIButton) {
        
        animateImage("happy")

    }
    
    @IBAction func SadButtonClicked(_ sender: Any) {
        
        animateImage("sad")

    }
    
    
    @IBAction func AngryButtonClicked(_ sender: Any) {
        
        
        animateImage("angry")
    }
    
    @IBAction func ShakeMeButtonClicked(_ sender: Any) {
        
        var w =  ImageViewOutlet.frame.width
         w += 40
         var h = ImageViewOutlet.frame.height
         h += 40
         
        var x =  ImageViewOutlet.frame.origin.x-20
         
         var y = ImageViewOutlet.frame.origin.y-20
         
         var largerFrame = CGRect(x: x, y: y, width: w, height: h)
         
         UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
             self.ImageViewOutlet.frame = largerFrame
         })
    }
    
    @IBAction func ShowButtonClicked(_ sender: Any) {
        
        UIView.animate(withDuration: 1, animations: {
            //Bring back all the objects to the center
            self.ImageViewOutlet.center.x = self.view.center.x
            
            self.SadOutlet.center.x = self.view.center.x
            
            self.AngryOutlet.center.x = self.view.center.x
            
            self.HappyOutlet.center.x = self.view.center.x
            
            self.ShakeMeOutlet.center.x = self.view.center.x
            
        })
        
        ShowOutlet.isEnabled = false;
    }
    
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            //Printing image origin
           print("ViewDidAppear: ", ImageViewOutlet.frame.origin.x)
            
            //Image should be hello
            ImageViewOutlet.image = UIImage(named: "Hello")
            
            //Moving all the buttons and imageview to the outside of the screen, except for show button
            HappyOutlet.frame.origin.x = view.frame.width
            
            SadOutlet.frame.origin.x = view.frame.width
            
            AngryOutlet.frame.origin.x = view.frame.width
            
            ShakeMeOutlet.frame.origin.x = view.frame.width
            
            
            ImageViewOutlet.frame.origin.x =
                view.frame.width
            
            //print(view.frame.width)
            
        }
        

        
        func animateImage(_ imageName: String){
            //The image is hidden or opaque
            UIView.animate(withDuration: 1, animations: {
                self.ImageViewOutlet.alpha = 0.0
            })
            
            //Image will appear with the given duration
            UIView.animate(withDuration: 1, delay: 0.2, animations: {
                self.ImageViewOutlet.alpha = 1.0
                self.ImageViewOutlet.image = UIImage(named:imageName)
            })
        }
    
}

