//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Umair Riaz on 13/07/2021.
//

import SwiftUI

struct HeaderDetailView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(product.name)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.white)
        })
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
