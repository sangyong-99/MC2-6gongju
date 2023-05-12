//
//  MainView_1.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct NameDayView: View {
    @StateObject var userInformation: UserInformation
    @StateObject var viewController: ViewController
    
    var body: some View {
        ZStack {
            if userInformation.dday == 0{
                Text("\(userInformation.name)님\n오늘입니다.")
                    .font(.system(size: 19, weight: .bold)) //폰트 사이즈
                    .lineSpacing(8.5)    //줄간격
            }
            else{
                Text("\(userInformation.name)님 \n\(userInformation.dday)일 남았습니다.")
                    .font(.system(size: 19, weight: .bold)) //폰트 사이즈
                    .lineSpacing(8.5)    //줄간격
            }
            
        }
        .ignoresSafeArea()
    }
    
    
    
//    func dday() -> Int{
//        print("dday생성")
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//
//
//        let today_string = dateFormatter.string(from: Date())
//        let target_string = dateFormatter.string(from: userInformation.date)
//
//        if today_string == target_string {
//            return 0
//        }
//
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.day], from: Date(), to: userInformation.date)
//
//        if let days = components.day {
//            return days + 1
//        }
//        return 0
//    }
}

struct NameDayView_Previews: PreviewProvider {
    static var previews: some View {
        NameDayView(userInformation: UserInformation(), viewController: ViewController())
    }
}
