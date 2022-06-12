//
//  DetailView.swift
//  CryptoApp
//
//  Created by Amby on 12/06/2022.
//

import SwiftUI

struct DetailView: View {
    let coin: CoinModel
    var body: some View {
        Text(coin.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
