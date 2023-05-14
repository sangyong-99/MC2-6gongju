//
//  BackBottonView.swift
//  princess
//
//  Created by 신상용 on 2023/05/14.
//

import SwiftUI

struct BackBottonView: View {
    @State var viewController: ViewController
    var body: some View {
        HStack{
            Image(systemName: "chevron.backward")
                .foregroundColor(Color(hex: 0x979797))
                .padding(.leading, 14)
            Text("Back")
                .font(.system(size: 15))
                .foregroundColor(Color(hex: 0x979797))
            Spacer()
        }
        .frame(alignment: .leading)
        .onTapGesture {
            viewController.currentPage -= 1
        }
    }
}

struct BackBottonView_Previews: PreviewProvider {
    static var previews: some View {
        BackBottonView(viewController: ViewController())
    }
}
