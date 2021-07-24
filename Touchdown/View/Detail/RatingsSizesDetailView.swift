//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Umair Riaz on 14/07/2021.
//

import SwiftUI


let sizes: [String] = ["XS", "S", "M", "L", "XL"]

struct RatingsSizesDetailView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self){item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .foregroundColor(.white)
                                .background(colorGray.cornerRadius(5))
                        })
                    }
                })
            })
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(sizes, id: \.self){size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(colorGray)
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(colorGray, lineWidth: 2)
                                )
                            
                        }
                    )
                    }
                })
            })
        }
    )
}

}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

