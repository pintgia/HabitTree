//
//  FormViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//
import UIKit

class FormViewController: UIViewController {
    
  
    
    

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet var newTreeTextField: UITextField!
    @IBOutlet var newTreeLabel2: UILabel!
    @IBOutlet var newTreeLabel1: UILabel!
    @IBOutlet var logActionTextField: UITextField!
    @IBOutlet var logActionLabel2: UILabel!
    @IBOutlet var logActionLabel1: UILabel!
    
    let treeName = "Do Chores"
    let action: [ String: Bool ] = [
        "Take out trash": true
    ]
    
    @IBAction func switchViewForm(_ sender: UISegmentedControl) {
        
    }
    
    @IBOutlet weak var viewContainer: UIView!
    var logActionView: UIView!
    var newTreeView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        newTreeLabel1.isHidden = true
        newTreeLabel2.isHidden = true
        newTreeTextField.isHidden = true
        
        view.backgroundColor = .systemYellow
        loadData()
        
        logActionView = LogActionViewController().view
        newTreeView = NewTreeViewController().view
        viewContainer?.addSubview(newTreeView)
        viewContainer?.addSubview(logActionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func switchViewAction( sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubviewToFront(logActionView)
        case 1:
            viewContainer.bringSubviewToFront(newTreeView)
        default:
            break
        }
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

    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            logActionLabel1.isHidden = false
            logActionLabel2.isHidden = false
            logActionTextField.isHidden = false
            newTreeLabel1.isHidden = true
            newTreeLabel2.isHidden = true
            newTreeTextField.isHidden = true
        }
        else {
            logActionLabel1.isHidden = true
            logActionLabel2.isHidden = true
            logActionTextField.isHidden = true
            newTreeLabel1.isHidden = false
            newTreeLabel2.isHidden = false
            newTreeTextField.isHidden = false
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! HomeViewController
        if segmentedControl.selectedSegmentIndex == 0{
            if let logActionText = logActionTextField.text {
                dvc.userInput = logActionText
            }
            
            
        } else {
            if let newTreeText = newTreeTextField.text {
                dvc.userInput = newTreeText
            }
        }
        
        
    }
}


