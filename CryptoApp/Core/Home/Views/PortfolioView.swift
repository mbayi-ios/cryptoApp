//
//  PortfolioView.swift
//  CryptoApp
//
//  Created by Amby on 02/06/2022.
//

import SwiftUI

struct PortfolioView: View {

    @Environment(\.presentationMode) var presentationMode

    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack(spacing: 10) {
                            ForEach(vm.allCoins) { coin in
                                CoinLogoView(coin: coin)
                                    .frame(width:75)
                                    .padding(4)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.theme.green, lineWidth: 1)
                                    )
                            }
                        }
                        .padding(.vertical, 4)
                        .padding(.leading)
                    })
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XmarkButton(presentationMode: presentationMode)
                }
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}
