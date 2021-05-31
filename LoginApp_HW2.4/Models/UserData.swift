//
//  UserData.swift
//  LoginApp_HW2.4
//
//  Created by Дарья Яровая on 31.05.2021.
//

import Foundation

struct UserData {
    let login: String
    let password: String
    let favoriteColor: String
    
    static func getUserData() -> UserData {
        UserData(
            login: "User",
            password: "Password",
            favoriteColor: "Emeral"
        )
    }
}
