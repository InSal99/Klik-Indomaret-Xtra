//
//  ProductViewModel.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 13/10/24.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var productList: [Product]
    
    init() {
        self.productList = products
    }
}

