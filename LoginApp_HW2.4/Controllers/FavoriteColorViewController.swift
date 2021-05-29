//
//  FavoriteColorViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class FavoriteColorViewController: UIViewController {
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greyButton: UIButton!
    @IBOutlet weak var lightBlueButton: UIButton!
    @IBOutlet weak var emeralButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonUtils.setupButton(button: blueButton, title: "Blue")
        ButtonUtils.setupButton(button: purpleButton, title: "Purple")
        ButtonUtils.setupButton(button: greyButton, title: "Grey")
        ButtonUtils.setupButton(button: lightBlueButton, title: "Light blue")
        ButtonUtils.setupButton(button: emeralButton, title: "Emeral")
        ButtonUtils.setupButton(button: yellowButton, title: "Yellow")
        
        resultLabel.text = "Let's do it!"
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        if sender == emeralButton {
            showAlert(title: "👍", message: "You are right!")
        }  else {
            showAlert(title: "👇", message: "You need to choose another color")
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true)
    }
}
