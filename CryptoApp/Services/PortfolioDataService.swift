//
//  PortfolioDataService.swift
//  CryptoApp
//
//  Created by Amby on 07/06/2022.
//

import Foundation
import CoreData

class PortfolioDataService {

    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"

    init(){
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores {(_, error) in
            if let error = error {
                print("error loading core data! \(error)")
            }
        }
    }

}
