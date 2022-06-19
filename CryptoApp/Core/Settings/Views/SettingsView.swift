//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Amby on 19/06/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hi")
                Section(header: Text("header"), footer: Text("footer")) {
                    Text("Hi")
                    Text("Hi")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("settngs")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    XmarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
