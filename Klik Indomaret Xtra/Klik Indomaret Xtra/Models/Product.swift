//
//  Product.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 13/10/24.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let category: Category
    let price: Int
    let discount: Int
}

let products: [Product] = [
    Product(image: "test_pic", name: "S-26 Procal Susu Bubuk Pertumbuhan 3 Vanilla", category: Category(name: "Makanan"), price: 53850, discount: 20),
    Product(image: "test_pic", name: "Biskuit Cokelat Oreo", category: Category(name: "Makanan"), price: 10000, discount: 10),
    Product(image: "test_pic", name: "Minuman Energi Pouch 500ml", category: Category(name: "Makanan"), price: 15000, discount: 15),
    Product(image: "test_pic", name: "Susu UHT Cokelat 1L", category: Category(name: "Makanan"), price: 25000, discount: 5),
    Product(image: "test_pic", name: "Roti Tawar 400g", category: Category(name: "Makanan"), price: 15000, discount: 10),
    Product(image: "test_pic", name: "Kopi Instan 100g", category: Category(name: "Makanan"), price: 12000, discount: 20),
    Product(image: "test_pic", name: "Mie Instan Rasa Ayam", category: Category(name: "Makanan"), price: 3000, discount: 0),
    Product(image: "test_pic", name: "Pasta Gigi 100ml", category: Category(name: "Makanan"), price: 8000, discount: 5),
    Product(image: "test_pic", name: "Sabun Mandi Cair 250ml", category: Category(name: "Makanan"), price: 15000, discount: 10),
    Product(image: "test_pic", name: "Detergen Bubuk 1kg", category: Category(name: "Makanan"), price: 25000, discount: 20),
    Product(image: "test_pic", name: "Bubur Instan Rasa Ayam", category: Category(name: "Makanan"), price: 5000, discount: 15),
    Product(image: "test_pic", name: "Kacang Goreng 200g", category: Category(name: "Makanan"), price: 12000, discount: 0),
    Product(image: "test_pic", name: "Sereal Sarapan 500g", category: Category(name: "Makanan"), price: 35000, discount: 10),
    Product(image: "test_pic", name: "Minyak Goreng 1L", category: Category(name: "Makanan"), price: 22000, discount: 5),
    Product(image: "test_pic", name: "Bubuk Teh Hijau 100g", category: Category(name: "Makanan"), price: 15000, discount: 20),
]
