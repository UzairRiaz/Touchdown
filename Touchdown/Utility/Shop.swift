//
//  Shop.swift
//  Touchdown
//
//  Created by Umair Riaz on 14/07/2021.
//

import Foundation


//An observable Object is use to trigger the change in view if any change happens in @Published property
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
