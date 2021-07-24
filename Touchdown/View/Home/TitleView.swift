//
//  TitleView.swift
//  Touchdown
//
//  Created by Umair Riaz on 13/07/2021.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        HStack{
            Text(title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(ColorBackground)
    }
}
