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
    private let entityName: String = "PortfolioEntity"

    @Published var savedEntities: [PortfolioEntity] = []
    init(){
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores {(_, error) in
            if let error = error {
                print("error loading core data! \(error)")
            }
        }
    }
    private func getPortfolio() {
        let request  = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("error fetching portfolio entities. \(error)")
        }
    }
}
