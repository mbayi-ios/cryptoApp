//
//  CoinLogoView.swift
//  CryptoApp
//
//  Created by Amby on 02/06/2022.
//

import SwiftUI

struct CoinLogoView: View {

    let coin: CoinModel

    var body: some View {
        VStack {
            CoinImageView(coin: coin)
        }
    }
}

struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {
        CoinLogoView(coin: dev.coin)
    }
}
