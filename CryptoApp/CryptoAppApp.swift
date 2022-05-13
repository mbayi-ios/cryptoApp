//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Amby on 13/05/2022.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
