//
//  SwiftUIView.swift
//  princess
//
//  Created by 신상용 on 2023/05/04.
//

import SwiftUI

struct NextButtonView: View {
    @State var viewCount: Int?
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                
                ZStack {
                    Rectangle()
                        .frame(width: 329, height: 44)
                        .cornerRadius(22)
                        .foregroundColor(Color(hex: 0x139460))
                    Text("다  음")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 24)
                
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
    }
}


struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}
