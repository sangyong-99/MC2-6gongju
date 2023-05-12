//
//  View_2.swift
//  sixprincesses
//
//  Created by jaelyung kim on 2023/05/08.
//

import SwiftUI

struct View_2: View {
    
    @State private var date = Date()
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(height:158)
            HStack {
                Text("은퇴일을 선택하세요")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.leading, 30)
                Spacer()
            }
            Spacer()
                .frame(height:20)
            
            HStack {
                Text("은퇴 100일 이내에 사용을 권장해요")
                    .font(.system(size: 16))
                    .foregroundColor(Color(hex: 0x48484A))
                    .padding(.leading, 30)
                Spacer()
            }
            Spacer()
            
            DatePicker("date", selection: $date, in: Date()..., displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(width: 330, height: 355)
                .accentColor(Color(hex: 0x139460))
                .environment(\.locale, Locale.init(identifier: "ko"))
            Spacer()
            
            NextButtonView(viewCount: 2)
                .onTapGesture {
                    userInformation.date = date
                    viewController.currentPage += 1
                }
            Spacer()
                .frame(height:52)
            
        }
        .ignoresSafeArea()
        
    }
}

struct View_2_Previews: PreviewProvider {
    static var previews: some View {
        View_2(userInformation: UserInformation(), viewController: ViewController())
    }
}
