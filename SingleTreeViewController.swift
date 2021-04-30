//
//  SingleTreeViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/23/21.
//

import UIKit

class SingleTreeViewController: UIViewController {
    
    @IBOutlet weak var streakCountLabel: UILabel!
    var streakCount = 0
    
    
    @IBAction func waterButtonPressed(_ sender: Any) {
        streakCount += 1
        print(streakCount)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

   

}
