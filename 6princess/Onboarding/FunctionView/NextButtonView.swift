//
//  SwiftUIView.swift
//  princess
//
//  Created by 신상용 on 2023/05/04.
//

import SwiftUI

struct NextButtonView: View {
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
                Spacer()
                    .frame(height: 24)
                
            }
        }
    }
}



struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}
