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
        
        if let tree = tree{
            treeImageView.image = UIImage(named: "drop\(tree.currentStage)")
            title = tree.name
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
            self.treeImageView.image = UIImage(named: "drop\(self.tree!.currentStage)")
            print("log alert action confirmed!")

        }))
        
        present(logAlert, animated: true)
        
        
        
    }
    
    

}
