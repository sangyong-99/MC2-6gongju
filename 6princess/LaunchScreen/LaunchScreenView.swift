//
//  LaunchScreenView.swift
//  sixgongju
//
//  Created by jaelyung kim on 2023/05/10.
//

import SwiftUI

struct LaunchScreenView: View {
    @StateObject var userInformation: UserInformation
    @StateObject var viewController: ViewController
    @StateObject var questionData: QuestionData
    let setting = UserDefaults.standard.bool(forKey: "setting")
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color(hex: 0x139460))
                .frame(width: 964, height: 1077)
                .offset(y: -361)
            VStack (spacing: 0){
                Spacer()
                    .frame(height: 158)
                Image("mc2logo_fix")
                    .resizable()
                    .frame(width: 150, height:190)
                    .padding(.bottom, 36)
                Image("mc2logotitle_fix")
                    .resizable()
                    .frame(width: 112, height:40)
                Spacer()
                    .frame(height: 164)
                    
                if let name = UserDefaults.standard.string(forKey: "name"){
                    VStack {
                        Text("\(name)").bold() + Text("님의 마지막 근무 100일을 알차게\n도와드리는 은퇴잉입니다. 가족과 사회에\n기여한 당신, 은퇴 선물의 이유를 찾아가보세요.")
                    }.multilineTextAlignment(.center)
                } else {
                    Text("마지막 근무 100일을 알차게\n도와드리는 은퇴잉입니다. 가족과 사회에\n기여한 당신, 은퇴 선물의 이유를 찾아가보세요.")
                        .multilineTextAlignment(.center)
                }
                
                if setting {
                    let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
                    
                    StartButtonView()
                        .padding(.top, 30)
                        .opacity(0)
                        .onReceive(timer, perform: { value in
                            viewController.currentPage += 1
                            timer.upstream.connect().cancel()
                        })
                    
                } else {
                    StartButtonView()
                        .padding(.top, 30)
                        .onTapGesture {
                            UserDefaults.standard.set(true, forKey: "setting")
                            viewController.currentPage  = 2
                        }
                }
                Spacer()
                    .frame(height: 52)
            }
            
        }
        .onAppear {
            LocalDataSave(userInformation: userInformation, viewController: viewController, questiondata: questionData).us_lo_save()
        }
        .ignoresSafeArea()
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView(userInformation: UserInformation(), viewController: ViewController(), questionData: QuestionData())
    }
}
