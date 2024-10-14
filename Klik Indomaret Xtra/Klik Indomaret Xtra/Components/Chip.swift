//
//  Chip.swift
//  Klik Indomaret Xtra
//
//  Created by Intan Saliya Utomo on 15/10/24.
//

import SwiftUI

struct Chip: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.system(size: 14, weight: .medium))
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(Color("Blue20"))
            .foregroundColor(Color("Blue30"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("Blue20"), lineWidth: 1))
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
