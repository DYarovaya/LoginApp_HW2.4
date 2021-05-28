//
//  UserInfoViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var guesFavoriteColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonUtils.setupButton(button: logOutButton, title: "Log Out")
        ButtonUtils.setupButton(button: guesFavoriteColorButton, title: "Try")
    }


    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
}
