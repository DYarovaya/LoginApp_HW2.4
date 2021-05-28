//
//  HomeViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomePhraseLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonUtils.setupButton(button: logOutButton, title: "Log Out")
        welcomePhraseLabel.text = "Welcome, \(userName) 🖐"
    }


    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
}
