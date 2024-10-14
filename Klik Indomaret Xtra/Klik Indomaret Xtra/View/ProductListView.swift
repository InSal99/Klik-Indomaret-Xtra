//
//  ProductListView.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 13/10/24.
//

import SwiftUI

struct ProductListView: View {
    @EnvironmentObject private var viewModel: ProductViewModel
    @EnvironmentObject private var categoryViewModel: CategoryViewModel
    @State private var columnCount: Int = 2
    @State private var showCartBanner = false
    @State private var searchText = ""
    @State private var isSearching = false

    var body: some View {
        NavigationStack {
            ZStack {
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack (spacing: 12) {
                        Button(action: {
                            // Action...
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(Color("Gray30"))
                                .font(.system(size: 20, weight: .medium))
                        }
                        SearchBar(text: $searchText)
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 12) {
                            ForEach(categoryViewModel.categoryList) { category in
                                Chip(title: category.name)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        Text("\(viewModel.productList.count) Produk")
                            .font(.headline)
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.spring()) {
                                columnCount = 2
                            }
                        }) {
                            Image(systemName: "rectangle.grid.2x2")
                                .font(.title2)
                                .foregroundColor(columnCount == 2 ? .blue : .gray)
                        }
                        
                        Button(action: {
                            withAnimation(.spring()) {
                                columnCount = 3
                            }
                        }) {
                            Image(systemName: "rectangle.grid.3x2")
                                .font(.title2)
                                .foregroundColor(columnCount == 3 ? .blue : .gray)
                        }
                    }
                    .padding()
                    
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: columnCount), spacing: 18) {
                            ForEach(viewModel.productList) { product in
                                if columnCount == 2 {
                                    LargeProductCardView(image: product.image, name: product.name, price: product.price, discount: product.discount)
                                        .transition(.scale)
                                } else if columnCount == 3 {
                                    SmallProductCardView(image: product.image, name: product.name, price: product.price, discount: product.discount)
                                        .transition(.scale)
                                }
                            }
                        }
                        .padding()
                        .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0))
                    }
                }
                VStack {
                    Spacer()
                    
                    if showCartBanner {
                        CartBanner(itemCount: 4, totalPrice: 62500)
                            .transition(.move(edge: .bottom))
                            .offset(y: showCartBanner ? 0 : 160)
                            .animation(.easeInOut(duration: 0.3))
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        showCartBanner = true
                    }
                }
            }
            .navigationBarBackButtonHidden(false)
        }
    }
}


struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
            .environmentObject(ProductViewModel())
    }
}
