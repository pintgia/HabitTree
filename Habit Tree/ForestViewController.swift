//
//  ForestViewController.swift
//  Habit Tree
//
//  Created by student on 4/30/21.
//

import UIKit

class ForestViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var trees = [Tree]()

    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        loadData()
       // let data = DataManager.readData(read: Data  )
        
        
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        saveTrees(trees: trees)
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trees.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! TreeCollectionViewCell
        let tree = trees[indexPath.row]
        
        
        cell.treeImageView.image = UIImage(named: "tree\(tree.currentStage)")
        cell.treeLabel.text = tree.name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                          sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: collectionView.frame.width/3, height: collectionView.frame.height/6)
    }
    
    @IBAction func onAddTreeButtonPressed(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Add a tree", message: nil, preferredStyle: .alert)
        alertController.addTextField()
        
        
        
        let addAction = UIAlertAction(title: "plant", style: .default
        ) { (action) in
            
            
            if let treeName = alertController.textFields?.first?.text{
                let tree = Tree(id: self.trees.count, name: treeName, currentStage: 0, totalStages: 5, habitStreak: false)
                //self.trees.append(tree)
                
                self.trees.append(tree)
                self.saveTrees(trees: self.trees)
                self.collectionView.reloadData()
                
                
                print(self.trees.count)
                
            }
                        
        }
        

        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    func saveTrees(trees:[Tree]) {
        
        let encodedData: Data = NSKeyedArchiver.archivedData(withRootObject: trees)
        DataManager.shared.createData(new: "trees", of: encodedData)
        loadData()
    }
    
    func loadData() {
        let savedData = DataManager.shared.readData(of: "trees")
        if let data = savedData {
            let decoded = NSKeyedUnarchiver.unarchiveObject(with: data as! Data) as! [Tree]
            trees = decoded
            collectionView.reloadData()
            print(decoded)
        }
    }
    
    var selectedTree: Tree?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedTree = trees[indexPath.row]
        performSegue(withIdentifier: "treeSegue", sender: nil)
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! TreeDetailViewController
        if let tree = selectedTree{
            dvc.tree = tree
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
