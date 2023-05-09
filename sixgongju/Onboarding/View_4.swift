//
//  View_4.swift
//  sixprincesses
//
//  Created by 신서연 on 2023/05/08.
//

import SwiftUI

struct View_4: View {
    var body: some View {
        VStack(alignment: .leading, spacing:0){
            Spacer()
                .frame(height: 158)
            
            //Title
            Text("나에게 은퇴 선물을 줄\n가족에게 동의를 받아보세요")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
                .frame(height: 20)
            
            //Description
            Text("100개의 할 일을 완료하고, 은퇴 선물을 받아보세요")
                .font(.system(size: 16))
            Spacer()
                .frame(height: 88)
            
            
            //Sign
            ZStack{
                Rectangle()
                    .frame(width: 330, height: 219)
                    .cornerRadius(24)
                    .foregroundColor(Color(hex:0xf5f5f5))
                    .shadow(color: Color(hex: 0xD1D1D6), radius: 2, x: 0, y: 2)
                    .overlay(
                        ZStack{
                            VStack{
                                HStack {
                                    Text("서 명")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(hex:0xAEAEB2))
                                        .padding(EdgeInsets(top: 22, leading: 22, bottom: 0, trailing: 0))
                                    Spacer()
                                }
                                Spacer()
                            }
                            
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    Button("지우기"){
                                    }.font(.system(size: 18))
                                     .foregroundColor(Color(hex:0x139460)).padding(EdgeInsets(top: 0, leading: 0, bottom: 22, trailing: 22))
                                }
                            }
                        }
                    )
               }
              Spacer()
                .frame(height: 20)
            
            //Sign_Description
            Text("위 화면에 서명을 입력하세요")
                .font(.system(size: 16))
                .foregroundColor(Color(hex:0x636366))
            Spacer()
                .frame(height: 112)
                
            //Button
            NextButtonView(viewCount: 4)
                .onTapGesture {
                    viewController.currentPage += 1
                }
    
            
        }.ignoresSafeArea()
    }
}

struct View_4_Previews: PreviewProvider {
    static var previews: some View {
        View_4()
    }
}
