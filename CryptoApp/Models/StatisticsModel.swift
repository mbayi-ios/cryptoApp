//
//  StatisticsModel.swift
//  CryptoApp
//
//  Created by Amby on 01/06/2022.
//

import Foundation

struct statisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?

    init(title: String, value: String, percentageChange: Double? = nil){
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
