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
        
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        if let tree = tree{
            treeImageView.image = UIImage(named: "drop\(tree.currentStage)")
            title = tree.name
        }
        
        
        
        logButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
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
