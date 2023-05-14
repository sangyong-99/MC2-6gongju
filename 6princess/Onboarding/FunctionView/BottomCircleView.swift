//
//  BottomCircleView.swift
//  princess
//
//  Created by 신서연 on 2023/05/14.
//

import SwiftUI

struct BottomCircleView: View {
    @State var viewCount: Int?
    var body: some View {
        HStack(spacing: 10) {
            Circle()
                .frame(width: 8, height: 8)
            .foregroundColor(viewCount == 1 ? Color(hex: 0x139460) : Color(hex: 0xB2B2B2))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(viewCount == 2 ? Color(hex: 0x139460) : Color(hex: 0xB2B2B2))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(viewCount == 3 ? Color(hex: 0x139460) : Color(hex: 0xB2B2B2))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(viewCount == 4 ? Color(hex: 0x139460) : Color(hex: 0xB2B2B2))
        }
    }
}

struct BottomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCircleView()
    }
}
