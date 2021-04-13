//
//  ViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImage: UIImageView!
    
    var imageNames = ["tree1", "tree2", "tree3"]
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        treeImage.image = UIImage(named: "treeOne")
        for imageName in imageNames {
            UIView.transition(with: treeImage, duration: 2.0, options: .transitionCrossDissolve, animations:  {
                self.treeImage.image = UIImage(named: imageName)
            }, completion: nil)
            
        }
        
        // Do any additional setup after loading the view.
       
    }
    

}
