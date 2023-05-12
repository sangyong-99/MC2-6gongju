//
//  MainView_3.swift
//  princess
//
//  Created by 신상용 on 2023/05/11.
//

import SwiftUI

struct MainView_3: View {
    @StateObject var userInformation: UserInformation
    @StateObject var viewController: ViewController
    var body: some View {
//        Rectangle()
//            .foregroundColor(Color.red)
//            .frame(width: 300, height: 386)
        VStack(spacing: 0){
            HStack {
                Text("축하합니다.\n\(userInformation.name)님의 모든 날을 축하드립니다.\n어쩌고 저쩌고 이렇고 저렇고~")
                    .font(.system(size: 15, weight: .semibold))
                .lineSpacing(30)
                .padding(.leading, 30)
                Spacer()
            }
            .padding(.top, 30)
            
            Spacer()
                .frame(height: 125)
            
            Rectangle()
                .frame(width: 330, height: 44)
                .foregroundColor(Color(hex: 0x139460))
                .cornerRadius(22)
                .overlay{
                    Text("은퇴 선물 교환증 보기")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.white)
                }
                .onTapGesture {
                    viewController.currentPage += 1
                }
               
        }
    }
}

struct MainView_3_Previews: PreviewProvider {
    static var previews: some View {
        MainView_3(userInformation: UserInformation(), viewController: ViewController())
    }
}
