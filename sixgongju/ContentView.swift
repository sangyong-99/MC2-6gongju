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
    @StateObject var questiondata: QuestionData = QuestionData()
    var body: some View {
        VStack {
            
            
            switch viewController.currentPage{
            case 1:
                View_1(userInformation: userInformation, viewController: viewController)
            case 2:
                View_2()
            case 3:
                View_3(userInformation: userInformation, viewController: viewController)
            case 4:
                View_4()
                
            default:
                Text("dd")
            }
            
            
            
        }
        
        
    }
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    // 수정
