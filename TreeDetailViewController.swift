//
//  TreeDetailViewController.swift
//  Habit Tree
//
//  Created by student on 4/30/21.
//

import UIKit

class TreeDetailViewController: UIViewController {
    var tree : Tree?
    
    @IBOutlet var treeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tree = tree{
            treeImageView.image = UIImage(named: "drop\(tree.currentStage)")
            title = tree.name
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}