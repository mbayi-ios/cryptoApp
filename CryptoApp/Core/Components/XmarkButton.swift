//
//  XmarkButton.swift
//  CryptoApp
//
//  Created by Amby on 02/06/2022.
//

import SwiftUI

struct XmarkButton: View {

    var presentationMode: Binding<PresentationMode>

    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

/*struct XmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XmarkButton(presentationMode: <#Binding<PresentationMode>#>)
    }
}
*/
