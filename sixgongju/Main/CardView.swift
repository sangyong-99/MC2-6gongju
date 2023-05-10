//
//  CardView.swift
//  sixgongju
//
//  Created by 신서연 on 2023/05/10.
//

import SwiftUI

struct CardView: View {
    @State var userInformation: UserInformation
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(hex: 0xF5F5F5))
                .cornerRadius(20)
                .frame(width: 330, height: 219)
                .shadow(color: Color(uiColor: .systemGray4), radius: 1, x: 0, y: 2)
            
            if let image = userInformation.image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 329, height: 219)
                    .cornerRadius(20)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(userInformation: UserInformation())
    }
}
