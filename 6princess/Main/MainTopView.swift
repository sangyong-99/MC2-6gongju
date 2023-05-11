//
//  MainView_1.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct MainTopView: View {
    @State var userInformation: UserInformation
    @StateObject var viewController: ViewController
    @StateObject var questiondata: QuestionData
//    @State var percent: Int = 30
    
    var body: some View {
        VStack(spacing: 0){
            HStack {
                NameDayView(userInformation: userInformation, viewController: viewController)
                    .padding(.leading, 30)
                Spacer()
//                RoundProgressView(percent: $percent)
                RoundProgressView(percent: $questiondata.completeQuestionCount)
                    .padding(.trailing, 30)
                    .animation(.easeIn, value: questiondata.completeQuestionCount)
            }
//            MainImageSignView(image: userInformation.image, productName: userInformation.productName, date: userInformation.date)   //실전 코드
//                .padding(.top, 34)
            
            MainImageSignView(userInformation: userInformation, viewController: viewController) //preview 전용코드
                .padding(.top, 34)      //preview 코드
//            Button("dd"){     //circle progress animation
//                questiondata.completeQuestionCount += 1
////                percent += 30
//            }
        }
        .ignoresSafeArea()
    }
}

struct MainTopView_Previews: PreviewProvider {
    static var previews: some View {
        MainTopView(userInformation: UserInformation(), viewController: ViewController(), questiondata: QuestionData())
    }
}
