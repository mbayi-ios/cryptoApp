//
//  String.swift
//  CryptoApp
//
//  Created by Amby on 19/06/2022.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
