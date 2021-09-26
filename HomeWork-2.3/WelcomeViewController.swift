//
//  WelcomeViewController.swift
//  HomeWork-2.3
//
//  Created by Ilya on 25.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
}



/*let backgroundLayer = CAGradientLayer()
backgroundLayer.colors = [UIColor.purple.cgColor,
                        UIColor.blue.cgColor]
backgroundLayer.frame = view.frame
view.layer.addSublayer(backgroundLayer)*/
