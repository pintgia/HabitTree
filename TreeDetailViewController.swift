//
//  TreeDetailViewController.swift
//  Habit Tree
//
//  Created by student on 4/30/21.
//

import UIKit

class TreeDetailViewController: UIViewController {
    var tree : Tree?
    
    
    @IBOutlet weak var logButton: UIButton!
    @IBOutlet var treeImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1898124784, green: 0.540225828, blue: 0.8221012682, alpha: 1)
        
        logButton.layer.cornerRadius = 10
        logButton.backgroundColor = #colorLiteral(red: 0.746868968, green: 0.6847620606, blue: 0.5067369342, alpha: 1)
        title = tree?.name
        
        switch self.tree!.currentStage {
        case 0 :
            self.treeImageView.image = UIImage(named: "drop0")
        case 1...3 :
            self.treeImageView.image = UIImage(named: "drop1")
        case 4...8 :
            self.treeImageView.image = UIImage(named: "drop2")
        case 9...13 :
            self.treeImageView.image = UIImage(named: "drop3")
        case 14...18 :
            self.treeImageView.image = UIImage(named: "drop4")
        case 19...24 :
            self.treeImageView.image = UIImage(named: "drop5")
        case 25...28 :
            self.treeImageView.image = UIImage(named: "drop6")
        case 29 :
            self.treeImageView.image = UIImage(named: "drop7")
            // congrats screen
        default :
            self.treeImageView.image = UIImage(named: "drop7")
            

    }
    }
    
    @IBAction func onLogButtonPressed(_ sender: Any) {
        showAlert()
    }
    
    // create alert for log action button
    func showAlert() {
        //creates alert box
        let logAlert = UIAlertController(title: "Did you complete an action?", message: nil, preferredStyle: .alert)
        
        //creates alert button
        logAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("log alert cancelled")

        }))
        
        logAlert.addAction(UIAlertAction(title: "Yes!", style: .default, handler: { action in
            self.tree?.currentStage += 1
            
            switch self.tree!.currentStage {
            case 0 :
                self.treeImageView.image = UIImage(named: "drop0")
            case 1...3 :
                self.treeImageView.image = UIImage(named: "drop1")
            case 4...8 :
                self.treeImageView.image = UIImage(named: "drop2")
            case 9...13 :
                self.treeImageView.image = UIImage(named: "drop3")
            case 14...18 :
                self.treeImageView.image = UIImage(named: "drop4")
            case 19...24 :
                self.treeImageView.image = UIImage(named: "drop5")
            case 25...28 :
                self.treeImageView.image = UIImage(named: "drop6")
            case 29 :
                self.treeImageView.image = UIImage(named: "drop7")
                // congrats screen
            default :
                self.treeImageView.image = UIImage(named: "drop7")
                
            }
            
           /*
            if self.tree?.currentStage == 0{
                self.treeImageView.image = UIImage(named: "drop0")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 1 || self.tree!.currentStage < 4 {
                self.treeImageView.image = UIImage(named: "drop1")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 4 || self.tree!.currentStage < 9 {
                self.treeImageView.image = UIImage(named: "drop2")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 9 || self.tree!.currentStage < 14 {
                self.treeImageView.image = UIImage(named: "drop3")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 14 || self.tree!.currentStage < 19 {
                self.treeImageView.image = UIImage(named: "drop4")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 19 || self.tree!.currentStage < 24 {
                self.treeImageView.image = UIImage(named: "drop5")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree!.currentStage >= 24 || self.tree!.currentStage < 29 {
                self.treeImageView.image = UIImage(named: "drop6")
                print(self.tree?.currentStage as Any)
            }
            else if self.tree?.currentStage == 29 {
                self.treeImageView.image = UIImage(named: "drop7")
                print(self.tree?.currentStage as Any)
                //implement some sort of congratulations screen/ pop up
            }
        */

            //self.treeImageView.image = UIImage(named: "drop\(self.tree!.currentStage)")
            print("log alert action confirmed!")

        }))
        
        present(logAlert, animated: true)
        
        
        
    }
    
    

}
