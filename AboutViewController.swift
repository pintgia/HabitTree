//
//  AboutViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutLogoText: UIImageView!
    @IBOutlet weak var aboutLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutLogo.image = UIImage(named: "logoMain")
        aboutLogoText.image = UIImage(named: "logoText")
        
        
        
        view.backgroundColor = #colorLiteral(red: 0.3377660665, green: 0.5844975222, blue: 0.6576585076, alpha: 1)
        

    }
    

    

}
