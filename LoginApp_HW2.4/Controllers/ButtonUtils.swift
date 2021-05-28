//
//  BaseViewController.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 28.05.2021.
//

import UIKit

class ButtonUtils {
    static func setupButton(button: UIButton, title: String) {
        button.layer.cornerRadius = 5
        button.setTitle(title, for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.textAlignment = .center
    }
}
