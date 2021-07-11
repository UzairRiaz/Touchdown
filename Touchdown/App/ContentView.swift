//
//  ContentView.swift
//  Touchdown
//
//  Created by Umair Riaz on 11/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
                
                ScrollView(.vertical, showsIndicators: true, content: {
                    VStack{
                        FeaturedTabView()
                            .padding(.vertical, 15)
                            .frame(height: 250)
                        FooterView()
                            .padding(.horizontal, 10)
                    }
                })
                }
            .background(ColorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
