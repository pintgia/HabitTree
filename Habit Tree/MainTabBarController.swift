//
//  MainTabBarController.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/22/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var addButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tabBar.tintColor = .white
        
        createAddButton()
        
    }
    
    
        func createAddButton() {
            
            // Create button frame
            let buttonFrame = CGRect(x: 0.0, y: 0.0, width: (self.tabBar.frame.width / 5), height: self.tabBar.frame.height)
            
            // Initialize the button
            addButton = UIButton(frame: buttonFrame)
            // Set the button's center point
            addButton.center = CGPoint(x: self.tabBar.center.x, y: (self.tabBar.frame.height / 2) + 3)
            // Set the button's position on Z-Axis
            addButton.layer.zPosition = 2
            
            
            // Sets and Configures button image
            let imageConfig = UIImage.SymbolConfiguration(pointSize: 36, weight: .black)
            let buttonImage = UIImage(systemName: "plus.circle.fill", withConfiguration: imageConfig)
            
            // allows to set images to buttons
            addButton.setImage(buttonImage, for: .normal)
            
            //set color of plus button
            addButton.tintColor = #colorLiteral(red: 0.9615374207, green: 0.9123803973, blue: 0.6930432916, alpha: 1)
            
            // adding a gesture recognizer (for taps)
            addButton.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
            
            //add button to tabBar
            tabBar.addSubview(addButton)
        }
    
    @objc func handleButtonTap() {
        
        //Must match the name matches  what I have named it in the story board
        performSegue(withIdentifier: "ShowForestView", sender: self)
        //performSegue(withIdentifier: "ShowNavController", sender: self)
    }
        
        

    
    

    
}
