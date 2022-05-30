//
//  CoinImageView.swift
//  CryptoApp
//
//  Created by Amby on 30/05/2022.
//

import SwiftUI

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = true

    init() {
        getImage()
    }

    private func getImage() {

    }
}

struct CoinImageView: View {

    @StateObject var vm: CoinImageViewModel = CoinImageViewModel()

    var body: some View {
        VStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
