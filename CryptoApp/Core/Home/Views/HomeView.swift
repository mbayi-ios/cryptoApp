//
//  HomeView.swift
//  CryptoApp
//
//  Created by Amby on 13/05/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()

            VStack {
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
