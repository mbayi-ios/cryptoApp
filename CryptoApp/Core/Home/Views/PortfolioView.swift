//
//  PortfolioView.swift
//  CryptoApp
//
//  Created by Amby on 02/06/2022.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0){
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .navigationBarItems(leading:
                                    Button(action: {
                                    }, label: {
                                        Image(systemName: "xmark")
                                            .font(.headline)
                                    })
            )
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
