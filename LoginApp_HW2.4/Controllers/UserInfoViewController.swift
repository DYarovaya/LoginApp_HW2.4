//
//  UserInfoViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var guessFavoriteColorButton: UIButton!
    
    var user: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonUtils.setupButton(button: logOutButton, title: "Log Out")
        ButtonUtils.setupButton(button: guessFavoriteColorButton, title: "Try")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let favoriteColorVC = segue.destination as? FavoriteColorViewController else {
            return
        }
        
        favoriteColorVC.user = user
    }


    @IBAction func logOutPressed() {
        dismiss(animated: true)
    }
}
