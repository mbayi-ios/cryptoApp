//
//  StatisticView.swift
//  CryptoApp
//
//  Created by Amby on 01/06/2022.
//

import SwiftUI

struct StatisticView: View {
    let stat: StatisticModel

    var body: some View {
        Text(stat.title)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(stat:dev.stat1)
    }
}
