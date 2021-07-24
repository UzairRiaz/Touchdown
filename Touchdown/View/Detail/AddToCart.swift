//
//  AddToCart.swift
//  Touchdown
//
//  Created by Umair Riaz on 14/07/2021.
//

import SwiftUI

struct AddToCart: View {
    let product: Product
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
                
        })
        .padding(15)
        .background(Color(red: product.red, green: product.green, blue: product.blue))
        .clipShape(Capsule())
    }
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart(product : products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
