//
//  HomeViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var textLabel: UILabel!
    var userInput = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        
        
        view.backgroundColor = #colorLiteral(red: 0.6664150357, green: 0.7777772546, blue: 0.5816738009, alpha: 1)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        textLabel.text = userInput
        
        // Use data from the view controller which initiated the unwind segue
    }
}
