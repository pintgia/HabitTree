//
//  ViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 3/22/21.
//

import UIKit
import SwiftUI




class ViewController: UIViewController {
    
    @IBOutlet weak var treeImage: UIImageView!
    
    var imageNames = ["tree1", "tree2", "tree3"]
    
    
    
    override func viewDidLoad() {
        
        
        
      /*  super.viewDidLoad()
        treeImage.image = UIImage(named: "treeOne")
        for imageName in imageNames {
            UIView.transition(with: treeImage, duration: 2.0, options: .transitionCrossDissolve, animations:  {
                self.treeImage.image = UIImage(named: imageName)
            }, completion: nil)
            
        }
        
        // Do any additional setup after loading the view.
       */
    }
    @IBAction func unwindToVC(_ unwindSegue: UIStoryboardSegue) {
       //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }

}
