//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Amby on 30/05/2022.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {

    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []

    @Published var searchText: String = ""

    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()

    init(){
        addSubscribers()
    }

    func addSubscribers(){

        //updateds allCoins
        $searchText
            .combineLatest(dataService.$allCoins)
            .map{(text, startingCoins) -> [CoinModel] in
                guard !text.isEmpty else {
                    return startingCoins
                }
                let lowercasedText = text.lowercased()

                return startingCoins.filter { (coin) -> Bool in
                    return coin.name.lowercased().contains(lowercasedText) ||
                           coin.symbol.lowercased().contains(lowercasedText) ||
                           coin.id.lowercased().contains(lowercasedText)
                }
            }
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins

            }
            .store(in: &cancellables)
    }

}
