//
//  HelloViewController.swift
//  LoginApp
//
//  Created by Оксана Щукина on 26.08.2021.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    var welcomeValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeValue)!"
     }

}
