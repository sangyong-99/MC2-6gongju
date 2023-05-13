//
//  SwiftUIView.swift
//  princess
//
//  Created by 신상용 on 2023/05/04.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 329, height: 44)
                .cornerRadius(22)
                .foregroundColor(Color(hex: 0x17B978))
            Text("은퇴잉 시작하기")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
        }
    }
}


struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
