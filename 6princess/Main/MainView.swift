//
//  MainView.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct MainView: View {
    @StateObject var userInformation: UserInformation
    @StateObject var viewController: ViewController
    @StateObject var questiondata: QuestionData
    var body: some View {
        VStack(spacing: 0){
            MainTopView(userInformation: userInformation, viewController: viewController, questiondata: questiondata)
                .padding(.top, 67)
            Two_Button(viewController: viewController, questionData: questiondata)
                .padding(.top, 38)
                .padding(.bottom, 10)
//            Spacer()
            if viewController.viewSelection {
                if questiondata.completeQuestionCount != 100{
                    MainView_1(questiondata: questiondata)
                }
                else {
                    MainView_3(userInformation: userInformation, viewController: viewController)
                }
                
            }
            else {
                MainView_2(questiondata: questiondata)
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(userInformation: UserInformation(), viewController: ViewController(), questiondata: QuestionData())
    }
}
