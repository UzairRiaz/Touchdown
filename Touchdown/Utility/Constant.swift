//
//  Constants.swift
//  Touchdown
//
//  Created by Umair Riaz on 11/07/2021.
//

import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

//COLOR
let ColorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)}

//FONT
//STRING
//API
//IMAGE
//MISC
//UX
