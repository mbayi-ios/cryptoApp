//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Amby on 01/06/2022.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
