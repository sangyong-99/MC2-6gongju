//
//  ReceiptView.swift
//  sixgongju
//
//  Created by 신서연 on 2023/05/11.
//

import SwiftUI

struct ReceiptView: View {
    @State var userInformation: UserInformation
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 97)
            
            Text("\(userInformation.name)님의 은퇴 선물 교환증")
                .font(.system(size: 20, weight: .bold))
            Text("\(dateToString(date: userInformation.date))")
            
            Spacer()
                .frame(height: 28)
            
            ZStack{
                Image("receipt")
                
                VStack{
                    if let image = userInformation.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 263, height: 175)
                            .cornerRadius(20)
                    }
                    Text("\(dateToString(date: userInformation.date)) 7777")
                    
                    DottedLineView()
                    
                    VStack{
                        HStack{
                            Text("상품명")
                            Spacer()
                            Text("상품명")
                        }
                        Divider()
                            .foregroundColor(Color(hex: 0x979797))
                        
                        
                        HStack{
                            Text("교환처")
                            Spacer()
                            Text("내 가족")
                        }
                        Divider()
                            .foregroundColor(Color(hex: 0x979797))
                        
                        HStack{
                            Text("유효기간")
                            Spacer()
                            Text("상품명")
                        }
                    }
                    .padding(.horizontal, 70)
                    
                }
                
            }
            Spacer()
                .frame(height: 65)
            
            
            
            
            ZStack{
                Rectangle()
                    .frame(width: 329, height: 44)
                    .cornerRadius(22)
                    .foregroundColor(Color(hex: 0x17B978))
                    .onTapGesture {
                    }
                
                Text("교환증 가족과 공유하기")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                
            }
            Spacer()
                .frame(height: 53)
            
            
        }
        .ignoresSafeArea()
    }
    func dateToString(date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MMdd"
        let dayday = formatter.string(from: date)
        return dayday
    }
}

struct DottedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.size.height / 2))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height / 2))
        return path
    }
}

struct DottedLineView: View {
    var body: some View {
        DottedLine()
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
            .foregroundColor(Color(hex: 0x979797))
            .frame(width: 270, height: 2)
            
    }
}




struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView( userInformation: UserInformation())
    }
}
