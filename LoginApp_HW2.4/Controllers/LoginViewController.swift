//
//  ViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: IBOutlets TextFields
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: IBOutlets Buttons
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    private let user = UserData.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        ButtonUtils.setupButton(
            button: loginButton,
                    title: "Log in"
        )
        ButtonUtils.setupButton(
            button: forgotUserNameButton,
            title: "Forgot\nuser name?"
        )
        ButtonUtils.setupButton(
            button: forgotPasswordButton,
            title: "Forgot\npassword?"
        )
        
    }
    @IBAction func logInButtonPressed() {
        if userNameTextField.text != user.login || passwordTextField.text != user.password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTextField.text = ""
            return
        } else {
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for vievController in tabBarController.viewControllers! {
            if let homeVC = vievController as? HomeViewController {
                homeVC.user = user
            } else if let userInfoVC = vievController as? UserInfoViewController {
                userInfoVC.user = user
            }
        }
    }
        
        //настройка алерта
        private func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            present(alert, animated: true)
        }
    
    @IBAction func forgotButtonsPressed(_ sender: UIButton) {
        sender == forgotUserNameButton
            ? showAlert(title: "Oops!", message: "Your name is User")
            : showAlert(title: "Oops!", message: "Your password is Password")
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    //скрытие клавиатуры по тапу в другое место
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    //переход в следующее поле ввода
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "goToWelcomeScreen", sender: self)
        }
        return true
    }
}

