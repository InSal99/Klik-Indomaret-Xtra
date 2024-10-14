//
//  Category.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 15/10/24.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name: String
}

let categories: [Category] = [
    Category(name: "Makanan"),
    Category(name: "Minuman"),
    Category(name: "Kebutuhan Dapur"),
    Category(name: "Cemilan & Biskuit")
]
