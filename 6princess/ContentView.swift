//
//  ContentView.swift
//  6princess
//
//  Created by 신상용 on 2023/04/27.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewController: ViewController = ViewController()
    @StateObject var userInformation: UserInformation = UserInformation()
    @StateObject var questionData: QuestionData = QuestionData()
    var body: some View {
        VStack {
            switch viewController.currentPage{
            case 1:
                View_1(userInformation: userInformation, viewController: viewController)
            case 2:
                View_2(userInformation: userInformation, viewController: viewController)
            case 3:
                View_3(userInformation: userInformation, viewController: viewController)
            case 4:
                View_4(userInformation: userInformation, viewController: viewController, questionData: questionData)
            case 5:
                LaunchScreenView(userInformation: userInformation, viewController: viewController, questionData: questionData)
            case 6:
                MainView(userInformation: userInformation, viewController: viewController, questiondata: questionData)
            case 7:
                ReceiptView(userInformation: userInformation, viewController: viewController)
            default:
                Error()
            }
                //            if UserDefaults.standard.bool(forKey: "setting"){   //setting 할때
                //                switch viewController.currentPage{
                //                case 1:
                //                    LaunchScreenView(userInformation: userInformation, viewController: viewController, questionData: questionData)
                //                case 2:
                //                        MainView(userInformation: userInformation, viewController: viewController, questiondata: questionData)
                ////                    LocalDataView(userInformation: userInformation, viewController: viewController)
                //                case 3:
                //                    ReceiptView(userInformation: userInformation, viewController: viewController)
                //                default:
                //                    Error()
                //                }
                //            }
                //            else{
                //                if (!viewController.setting){
                //                    switch viewController.currentPage{
                //                    case 1:
                //                        View_1(userInformation: userInformation, viewController: viewController)
                //                    case 2:
                //                        View_2(userInformation: userInformation, viewController: viewController)
                //                    case 3:
                //                        View_3(userInformation: userInformation, viewController: viewController)
                //                    case 4:
                //                        View_4(userInformation: userInformation, viewController: viewController, questionData: questionData)
                //                    case 5:
                //                        LaunchScreenView(userInformation: userInformation, viewController: viewController, questionData: questionData)
                //                    default:
                //                        Error()
                //                    }
                //                }
                //            }
                
                //            MainView_1(userInformation: userInformation, viewController: viewController)
                //                practice()
            }
            //            else {      //viewController.setting 이 true일때
            //                remain(userInformation: userInformation, viewController: viewController)
            //            }
        }
        
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    // 수정
