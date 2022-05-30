//
//  PreviewProvider.swift
//  CryptoApp
//
//  Created by Amby on 30/05/2022.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() { }

    let coin = CoinModel(
            id: "bitcoin",
            symbol: "btc",
            name: "Bitcoin",
            image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
            currentPrice: 30741,
            marketCap: 584977980621,
            marketCapRank: 1,
            fullyDilutedValuation: 644740446279,
            totalVolume: 22575410991,
            high24H: 30768,
            low24H: 29031,
            priceChange24H: 1710.39,
            priceChangePercentage24H: 5.89163,
            marketCapChange24H: 31579837032,
            marketCapChangePercentage24H: 5.70653,
            circulatingSupply: 19053462,
            totalSupply: 21000000,
            maxSupply: 21000000,
            ath: 69045,
            athChangePercentage: -55.51512,
            athDate: "2021-11-10T14:24:11.849Z",
            atl: 67.81,
            atlChangePercentage: 45195.58512,
            atlDate: "2013-07-06T00:00:00.000Z",
            lastUpdated: "2022-05-30T09:57:19.233Z",
            sparklineIn7D: SparklineIn7D(price: [
                30528.731586363934,
                30546.4547069185,
                30381.50734327177,
                30495.217363563523,
                30483.75338516015,
                30440.18813153408,
                30433.124856438022,
                30435.747186647808,
                30278.200334421705
              ]),
            priceChangePercentage24HInCurrency: 5.891628939050818,
            currentHoldings: 1.5)
}
