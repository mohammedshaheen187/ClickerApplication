//
//  ClickerApp.swift
//  Clicker
//
//  Created by Mohammed Shaheen on 14/04/2022.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseFirestore

@main
struct ClickerApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            let email = UserDefaults.standard.object(forKey: "email") as? String ?? ""
            if email.count > 0{
                StudentPage()
            }else{
                FirstPage()
            }
        }
    }
}
