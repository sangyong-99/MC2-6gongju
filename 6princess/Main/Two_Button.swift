//
//  Two_Button.swift
//  princess
//
//  Created by 신상용 on 2023/05/07.
//

import SwiftUI

struct Two_Button: View {
    @StateObject var viewController: ViewController
    @StateObject var questionData: QuestionData
    var body: some View {
        ZStack {
            HStack{
                
                VStack(spacing: 0) {
                    Button(action: {
                        viewController.viewSelection = true
                        print("MainView_1")
                    }) {
                        if questionData.completeQuestionCount != 100{
                            Text("예정")
                                .bold()
                                .foregroundColor(viewController.viewSelection ? Color.black : Color.gray)
                        }
                        else{
                            Text("선물 보기")
                                .bold()
                                .foregroundColor(viewController.viewSelection ? Color.black : Color.gray)
                        }
                    }
                    .padding(.bottom, 7.21)
                    Divider()
                        .frame(minHeight: 1.5)
                        .overlay(viewController.viewSelection ? Color.black : Color.white)
                    
                }
                
                Spacer()
                
                VStack(spacing: 0) {
                    Button(action: {
                        viewController.viewSelection = false
                        print("MainView_2")
                    }) {
                        Text("완료")
                            .bold()
                            .foregroundColor(viewController.viewSelection ? Color.gray : Color.black)
                    }
                    .padding(.bottom, 7.21)
                    Divider()
                        .frame(minHeight: 1.5)
                    
                        .overlay(viewController.viewSelection ? Color.white : Color.black)
                }
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
            //            .border(Color.black, width: 1)
            
            
        }
        
    }
    
}

struct Two_Button_Previews: PreviewProvider {
    static var previews: some View {
        Two_Button(viewController: ViewController(), questionData: QuestionData())
    }
}
