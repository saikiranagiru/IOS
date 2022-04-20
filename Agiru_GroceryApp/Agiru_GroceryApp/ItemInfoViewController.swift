//
//  ItemInfoViewController.swift
//  Agiru_GroceryApp
//
//  Created by Sai kiran Agiru on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {

    var details : GroceryItem?
//    var secname : GroceryItem?
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var showItemInfoAction: UIButton!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = details?.itemName
        itemInfoOutlet.isHidden = true
//        itemInfoOutlet.text = details?.itemInfo
        var imgn = details?.itemImage
        itemImageViewOutlet.image = UIImage(named: imgn!)
        let originalImageFrame = itemImageViewOutlet.frame
        let widthShrink: CGFloat = 30
        let heightShrink: CGFloat = 30
        let newFrame = CGRect(
        x: itemImageViewOutlet.frame.origin.x + widthShrink,
        y: itemImageViewOutlet.frame.origin.y + heightShrink,
        width: itemImageViewOutlet.frame.width - widthShrink,
        height: itemImageViewOutlet.frame.height - heightShrink)
        itemImageViewOutlet.frame = newFrame
        UIView.animate(withDuration: 1.0, delay: 0.7, usingSpringWithDamping: 0.3, initialSpringVelocity: 30.0,  animations: {
                        self.itemImageViewOutlet.frame = originalImageFrame
                    })
            
        }
    
    @IBAction func buttonGetInfo(_ sender: Any) {
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = details?.itemInfo
        
        
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


