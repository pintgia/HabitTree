//
//  HomeViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//

import UIKit

class HomeViewController: UIViewController {
    //@IBOutlet var textLabel: UILabel!
    @IBOutlet weak var viewTreesButton: UIButton!
    @IBOutlet weak var homeTreeImage: UIImageView!
    
    
    var userInput = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        viewTreesButton.layer.cornerRadius = 10
        view.backgroundColor = #colorLiteral(red: 0.6664150357, green: 0.7777772546, blue: 0.5816738009, alpha: 1)
        
        if DataManager.shared.trees.count > 0 {
            let tree = DataManager.shared.trees.first
            switch tree!.currentStage {
            case 0 :
                self.homeTreeImage.image = UIImage(named: "drop0")
            case 1...3 :
                self.homeTreeImage.image = UIImage(named: "drop1")
            case 4...8 :
                self.homeTreeImage.image = UIImage(named: "drop2")
            case 9...13 :
                self.homeTreeImage.image = UIImage(named: "drop3")
            case 14...18 :
                self.homeTreeImage.image = UIImage(named: "drop4")
            case 19...24 :
                self.homeTreeImage.image = UIImage(named: "drop5")
            case 25...28 :
                self.homeTreeImage.image = UIImage(named: "drop6")
            case 29 :
                self.homeTreeImage.image = UIImage(named: "drop7")
                // congrats screen
            default :
                self.homeTreeImage.image = UIImage(named: "drop7")
        }
        } else {
            homeTreeImage.image = UIImage(named: "drop0")
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        if DataManager.shared.trees.count > 0 {
            let tree = DataManager.shared.trees.first
            switch tree!.currentStage {
            case 0 :
                self.homeTreeImage.image = UIImage(named: "drop0")
            case 1...3 :
                self.homeTreeImage.image = UIImage(named: "drop1")
            case 4...8 :
                self.homeTreeImage.image = UIImage(named: "drop2")
            case 9...13 :
                self.homeTreeImage.image = UIImage(named: "drop3")
            case 14...18 :
                self.homeTreeImage.image = UIImage(named: "drop4")
            case 19...24 :
                self.homeTreeImage.image = UIImage(named: "drop5")
            case 25...28 :
                self.homeTreeImage.image = UIImage(named: "drop6")
            case 29 :
                self.homeTreeImage.image = UIImage(named: "drop7")
                // congrats screen
            default :
                self.homeTreeImage.image = UIImage(named: "drop7")
        }
        } else {
            homeTreeImage.image = UIImage(named: "drop0")
        }
    }
    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        //textLabel.text = userInput
        
        // Use data from the view controller which initiated the unwind segue
    }
}
