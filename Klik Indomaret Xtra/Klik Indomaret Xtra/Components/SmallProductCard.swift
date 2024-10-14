//
//  SmallProductCard.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 13/10/24.
//

import SwiftUI

struct SmallProductCardView: View {
    let image: String
    let name: String
    var price: Int
    let discount: Int
    
    var discountedPrice: Int {
        return price - (price * discount / 100)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                Image("\(image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 124)
                    .clipShape(Rectangle())
                    .roundedCorner(12, corners: [.topLeft, .topRight])

                if (discount > 0) {
                    DiscountTagView(discount: discount)
                        .offset(CGSize(width: -6, height: 0))
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.system(size: 12, weight: .regular))
                    .lineLimit(2)
                
                Spacer()
                
                if (discount > 0) {
                    VStack {
                        Text("Rp \(price)")
                            .font(.system(size: 10, weight: .regular))
                            .foregroundColor(.gray)
                            .strikethrough()
                                                Text("Rp \(discountedPrice.formatted())")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.black)
                    }
                } else {
                    Text("Rp \(price.formatted())")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.black)
                }
                
                Button(action: {
                }) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Keranjang")
                    }
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color.blue)
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.blue, lineWidth: 1)
                    )
                }
            }
            .padding(.top, 8)
            .padding(8)
            .frame(height: 139)
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
        )
        .frame(width: 124, height: 263)
    }
}

struct SmallProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallProductCardView(image: "test_pic", name: "test", price: 0, discount: 88)
            .previewLayout(.sizeThatFits)
    }
}
