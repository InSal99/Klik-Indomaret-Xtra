//
//  CartBanner.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 14/10/24.
//

import SwiftUI

struct CartBanner: View {
    var itemCount: Int = 4
    var totalPrice: Int = 62500
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "cart.fill")
                    .foregroundColor(.white)
                Text("\(itemCount) Barang")
                    .foregroundColor(.white)
                    .font(.system(size: 12, weight: .medium))
            }
            
            Spacer()
            
            // Total Price
            Text("Rp \(String(totalPrice.formatted()))")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
            
            Image(systemName: "arrow.right.circle.fill")
                .foregroundColor(.white)
                .font(.system(size: 22))
        }
        .padding()
        .background(Color("Blue30"))
        .cornerRadius(8)
        .padding(.horizontal)
    }
}

struct CartBanner_Previews: PreviewProvider {
    static var previews: some View {
        CartBanner()
            .previewLayout(.sizeThatFits)
    }
}
