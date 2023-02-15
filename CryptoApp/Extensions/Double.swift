//
//  Double.swift
//  CryptoApp
//
//  Created by Amby on 30/05/2022.
//

import Foundation

extension Double {
    /// convert a double into a currency with 2 decimal places
    /// ```
    /// convert 1234.56 to $1,234.56

    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current // <- default value
        //formatter.currencyCode = "usd" // <- Change currency
        //formatter.currencySymbol = "$" // <- change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    /// convert a double into a currency as a String with 2 decimal places
    /// ```
    /// convert 1234.56 to "$1,234.56"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }

    /// convert a double into a currency with 2-6 decimal places
    /// ```
    /// convert 1234.56 to $1,234.56
    /// convert 12.3456 to $12.3456
    /// convert 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current // <- default value
        //formatter.currencyCode = "usd" // <- Change currency
        //formatter.currencySymbol = "$" // <- change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }

    /// convert a double into a currency as a String with 2-6 decimal places
    /// ```
    /// convert 1234.56 to "$1,234.56"
    /// convert 12.3456 to "$12.3456"
    /// convert 0.123456 to "$0.123456"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }

    /// convert a Double into string representation
    /// ```
    /// convert 1.23456 to "1.23"
    /// ```
    func asNumberString() -> String{
        return String(format: "%.2f", self)
    }

    /// convert a Double into string representation with percent Symbol
    /// ```
    /// convert 1.23456 to "1.23%"
    ///
    func asPercentString() -> String {
        return asNumberString() + "%"
    }

    /// Convert a double to a String with K, M, Bn, Tr abbreviations
    /// ```
    /// convert 112 to 12.00
    /// convert 1234 to 1.23k
    /// convert 123456 to 123.45k
    /// converts 12345678 to 12.34M
    /// converts 1234567890 to 1.23Bn
    /// convert 12345678901234 to 12.34Tr
    ///
    func formattedWithAbbreviations() -> String {
        let num  = abs(Double(self))
        let sign = (self < 0 ) ? "-" : ""

        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"

        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"

        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"

        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"

        case 0...:
            return self.asNumberString()

        default:
            return "\(sign)\(self)"
        }
    }
}
