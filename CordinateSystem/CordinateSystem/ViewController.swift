//
//  ViewController.swift
//  CordinateSystem
//
//  Created by Agiru,Sai Kiran on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = imageViewOutlet.frame.minX
        let minY = imageViewOutlet.frame.minY
        print("(\(minX),\(minY))")
        
        let midX = imageViewOutlet.frame.midX
        let midY = imageViewOutlet.frame.midY
        print("(\(midX),\(midY))")
        
        let maxX = imageViewOutlet.frame.maxX
        let maxY = imageViewOutlet.frame.maxY
        print("(\(maxX),\(maxY))")
        
        //move the location of the image of the upper left corner (0,0)
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the location of the image of the upper right corner (0,0)
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //move the location of the image of the lower left (0,0)
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //move the location of the image of the lower right (0,0)
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        //move the location of the image of the center(0,0)
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
        
        
        
    
    }
    


}

