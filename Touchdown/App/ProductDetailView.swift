//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Umair Riaz on 13/07/2021.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
            
            HeaderDetailView(product: products[0])
                .padding(.horizontal)
            TopPartDetailView(product: products[0])
                .padding(.horizontal)
                .zIndex(1)
            VStack(alignment: .center, spacing: 0, content: {
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom,  10)
                VStack(alignment: .center, spacing: 0, content: {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                Spacer()
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                AddToCart(product: product)
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: product.red, green: product.green, blue: product.blue))
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
