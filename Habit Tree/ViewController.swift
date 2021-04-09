//
//  ViewController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressView: UIProgressView!
    
    let progress = Progress(totalUnitCount: 5)
    
    
    
    @IBAction func buttonCompleteLogPressed(_ sender: Any) {
        self.progress.completedUnitCount += 1
        
        let progressFloat = Float(self.progress.fractionCompleted)
        self.progressView.setProgress(progressFloat, animated: true)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
       
    }


}
