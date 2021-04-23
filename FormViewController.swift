//
//  FormViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//
import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
 
    let treeName = "Do Chores"
    let action: [ String: Bool ] = [
        "Take out trash": true
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemYellow
        loadData()
    }
    
    func loadData() {
        let savedData = DataManager.shared.readData(of: treeName)
        if let data = savedData {
            print(data)
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        DataManager.shared.createData(new: treeName, of: action)
    }

}
