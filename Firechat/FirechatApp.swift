//
//  FirechatApp.swift
//  Firechat
//
//  Created by Giorgi Meqvabishvili on 10.02.23.
//

import SwiftUI
import Firebase

@main
struct FirechatApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
