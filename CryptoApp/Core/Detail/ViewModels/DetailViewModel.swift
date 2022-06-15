//
//  DetailViewModel.swift
//  CryptoApp
//
//  Created by Amby on 15/06/2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()

    init(coin: CoinModel){
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }

    private func addSubscribers(){
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("RECEIVED COIN DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
