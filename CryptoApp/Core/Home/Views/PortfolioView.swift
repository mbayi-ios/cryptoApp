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

    @State private var selectedCoin: CoinModel? = nil
    @State private var quantityText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)

                    coinLogoList

                    if selectedCoin != nil {
                        portfolioInputSection
                    }

                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XmarkButton(presentationMode: presentationMode)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 10) {
                        Image(systemName: "checkmark")
                        Text("Save".uppercased())
                    }
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

extension PortfolioView {
    private var coinLogoList : some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHStack(spacing: 10) {
                ForEach(vm.allCoins) { coin in
                    CoinLogoView(coin: coin)
                        .frame(width:75)
                        .padding(4)
                        .onTapGesture {
                            withAnimation(.easeIn){
                                selectedCoin = coin
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke( selectedCoin?.id == coin.id ? Color.theme.green: Color.clear,
                                        lineWidth: 1)
                        )
                }
            }
            .frame(height: 120)
            .padding(.leading)
        })
    }

    private var portfolioInputSection: some View {
        VStack(spacing: 20){
            HStack {
                Text("Current Price of \(selectedCoin?.symbol.uppercased() ?? ""):")
                Spacer()
                Text(selectedCoin?.currentPrice.asCurrencyWith6Decimals() ?? "")
            }
            Divider()
            HStack {
                Text("Amound holding:")
                Spacer()
                TextField("Ex: 1.4", text: $quantityText)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.decimalPad)
            }
            Divider()
            HStack {
                Text("Current Value:")
                Spacer()
                Text(getCurrentValue().asCurrencyWith2Decimals())
            }
        }
        .animation(.none)
        .padding()
        .font(.headline)
    }

    private func getCurrentValue()-> Double{
        if let quantity = Double(quantityText) {
            return quantity * (selectedCoin?.currentPrice ?? 0)
        }
        return 0
    }
}
