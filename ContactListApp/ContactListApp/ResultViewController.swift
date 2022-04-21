//
//  ResultViewController.swift
//  ContactListApp
//
//  Created by Agiru,Sai Kiran on 4/21/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var demo: UILabel!
    
    @IBOutlet weak var emailOutlet: UILabel!
    @IBOutlet weak var phoneNumOutlet: UILabel!
    var phoneNum = 0
    var email = ""
    
    var demot = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumOutlet.text = "\(phoneNum)"
        emailOutlet.text = email
        demo.text = demot
                
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
