//
//  View_2.swift
//  sixprincesses
//
//  Created by jaelyung kim on 2023/05/08.
//

import SwiftUI

struct View_2: View {
    
    @State private var date = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
                .frame(height:158)
            Text("은퇴일을 선택하세요")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
                .frame(height:20)
            
            Text("은퇴 100일 이내에 사용을 권장해요")
                .font(.system(size: 16))
                .foregroundColor(Color(hex: 0x48484A))
            Spacer()
            
            DatePicker("date", selection: $date, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(width: 330)
                .accentColor(Color(hex: 0x139460))
                .environment(\.locale, Locale.init(identifier: "ko"))
            Spacer()
            
            NextButtonView(viewCount: 2)
                .onTapGesture {
                    
                }
            Spacer()
                .frame(height:52)
            
        }
        .ignoresSafeArea()
        
    }
}

struct View_2_Previews: PreviewProvider {
    static var previews: some View {
        View_2()
    }
}
