//
//  ViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImage: UIImageView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        treeImage.image = UIImage(named: "treeOne")
        
        // Do any additional setup after loading the view.
       
    }


}
