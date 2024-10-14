//
//  CategoryViewModel.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 15/10/24.
//

import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categoryList: [Category]
    
    init() {
        self.categoryList = categories
    }
}
