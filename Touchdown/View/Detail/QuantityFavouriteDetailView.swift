//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Umair Riaz on 14/07/2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var counter: Int = 0
    @State private var isFavourite: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                counter > 0 ? counter -= 1 : nil
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 46)
            Button(action: {
                counter < 100 ? counter += 1 : nil
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            Button(action: {
                isFavourite.toggle()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isFavourite ? .pink : colorGray)
            })
        })//HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
