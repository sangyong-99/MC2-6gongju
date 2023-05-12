//
 //  CompleteModalView.swift
 //  princess
 //
 //  Created by jaelyung kim on 2023/05/11.
 //
 import SwiftUI

 struct CompleteModalView: View {
     @StateObject var userInformation: UserInformation
     @StateObject var questiondata: QuestionData

     var body: some View {
         ZStack {
             Image("complete")
                 .resizable()
                 .aspectRatio(contentMode: .fit)

             VStack (spacing: 0){
                 Text("\(userInformation.name)")
                     .bold()
                     .font(.system(size: 24))
                     .foregroundColor(.white)
                 + Text("님 축하합니다!!")
                     .font(.system(size: 24))
                     .foregroundColor(.white)
                 
                 Spacer()
                     .frame(height: 14)
                 if (questiondata.completeQuestionCount == 100) {
                     Text("\(questiondata.completeQuestionCount)")
                         .font(.system(size: 14))
                         .foregroundColor(.white)
                     + Text("개를 모두 완료하셨습니다. 완벽합니다!")
                         .font(.system(size: 14))
                         .foregroundColor(.white)
                 } else {
                     VStack {
                         Text("\(questiondata.completeQuestionCount)")
                             .font(.system(size: 14))
                             .foregroundColor(.white)
                         + Text("개를 완료하셨습니다. 은퇴 선물에\n한 걸음 더 다가섰습니다.")
                             .font(.system(size: 14))
                             .foregroundColor(.white)
                     }.multilineTextAlignment(.center)
                 }
                 
                 Spacer()
                     .frame(height: 20)


                 ZStack {
                     Rectangle()
                         .cornerRadius(22)
                         .foregroundColor(.white)
                         .frame(width: 129, height: 44)
                     Text("확인")
                         .foregroundColor(Color(hex: 0x39865D))
                 }.onTapGesture {
                     questiondata.showCompleteModalView = false
                 }
                 Spacer().frame(height: 160)
             }
         }
     }
 }

 struct CompleteModalView_Previews: PreviewProvider {
     static var previews: some View {
         CompleteModalView(userInformation: UserInformation(), questiondata: QuestionData())
     }
 }
