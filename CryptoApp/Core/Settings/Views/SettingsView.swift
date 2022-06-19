//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Amby on 19/06/2022.
//

import SwiftUI

struct SettingsView: View {

    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.come/c/swiftfulthing")!
    let coffeeURL = URL(string: "https://www.google.com")!
    let coingeckoURL = URL(string: "https://www.google.com")!
    let personalURL = URL(string: "https://www.google.com")!

    var body: some View {
        NavigationView {
            List {
                swiftfulThinking
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("settngs")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    //XmarkButton()
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

extension SettingsView{
    private var swiftfulThinking: some View {
        Section(header: Text("Swiftful Thinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                Text("This app was made by following a swiftful thinking course on youtube. It uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)

            Link("Subscribe on his youtube channel", destination: youtubeURL)
            Link("Support his coffee acdiction", destination: youtubeURL)
        }
    }
}
