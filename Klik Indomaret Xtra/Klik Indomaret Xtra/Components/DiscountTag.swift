//
//  DiscountTag.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 13/10/24.
//

import SwiftUI

struct DiscountTagView: View {
    let radius: CGFloat = 12
    let discount: Int
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text("\(discount)%")
                .foregroundColor(.white)
                .font(.system(size: 12, weight: .semibold))
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .frame(maxWidth: 56, alignment: .center)
                .background(Color("Red30"))
                .roundedCorner(16, corners: [.bottomRight, .topRight])
                .roundedCorner(8, corners: [.topLeft])
            
            Rectangle()
                .frame(width: 6, height: 6)
                .roundedCorner(8, corners: [.bottomLeft])
                .foregroundColor(Color("Red40"))
        }
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DiscountTagView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountTagView(discount: 88)
    }
}
