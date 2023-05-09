//
//  View_1.swift
//  princess
//
//  Created by 신상용 on 2023/05/04.
//

import SwiftUI

struct View_1: View {
    @State var name : String = ""
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    var body: some View {
        
        ZStack{
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 156)
                HStack {
                    Text("이름을 입력해주세요")
                        .font(.system(size: 32, weight: .semibold))
//                        .border(Color.black, width: 1)
                        .frame(alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.bottom, 34)
                    Spacer()
                }
                TextField("이름", text: $name)
//                    .border(Color.black, width: 1)
                    .padding(.leading, 34)
                    .font(.system(size: 18, weight: .medium))
                Divider()
                    .frame(minHeight: 1.5)
                    .overlay(Color(hex: 0xD8D8D8))
                    .padding([.leading, .trailing], 30)
                    .padding(.top, 5)
                    
                    
                Spacer()
                NextButtonView(viewCount: 1)
                    .onTapGesture {
                        userInformation.name = name
                        viewController.currentPage += 1
                       //UserDefaults 삽입
                    }
                Spacer()
                    .frame(height: 53)
            }
        }
        .ignoresSafeArea()
        
    }
}

struct View_1_Previews: PreviewProvider {
    static var previews: some View {
        View_1(userInformation: UserInformation(), viewController: ViewController())
    }
}
