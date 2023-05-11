//
//  StartView.swift
//  princess
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct StartView: View {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var questiondata: QuestionData
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(height: 169) //가장위에 레이아웃
            HStack{
                
                Text("은퇴잉 \n: 은퇴ing")
                    .font(.system(size: 40, weight: .heavy))
                    .lineSpacing(3)    //줄간격
                    .padding(.leading, 42)
                Spacer()
            }
            HStack{
                
                Text("당신의 마지막 근무 100일을 알차게 도와드리는  은퇴잉입니다. 그리고 가족과 사회에 기여한 당신,  은퇴 선물의 이유를 찾아가보세요.")
                    .font(.system(size: 15, weight: .medium))
                    .lineSpacing(5)    //줄간격
                    .padding(.leading, 42)
                    .padding(.top, 21)
                Spacer()
            }
            Spacer()
            
            ZStack {
                Rectangle()
                    .frame(width: 329, height: 44)
                    .cornerRadius(22)
                    .foregroundColor(Color(hex: 0x17B978))
                Text("다  음")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(.bottom, 23)
            .onTapGesture {
                viewController.currentPage += 1
                
                //데이터 로컬에 넣는 코드
                LocalDataSave(userInformation: userInformation, viewController: viewController, questiondata: questiondata).us_lo_save()
                
            }
            
            Spacer()
                .frame(height: 84)
        }
        .ignoresSafeArea()
    }
    
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(userInformation: UserInformation(), viewController: ViewController(), questiondata: QuestionData())
    }
}











