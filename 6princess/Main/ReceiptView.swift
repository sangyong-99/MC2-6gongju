//
//  ReceiptView.swift
//  sixgongju
//
//  Created by 신서연 on 2023/05/11.
//
import SwiftUI

struct ReceiptView: View {
    @StateObject var userInformation: UserInformation
    @StateObject var viewController: ViewController
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                Spacer()
                    .frame(height: 97)
                Text("\(userInformation.name)님의 은퇴 선물 교환증")
                    .font(.system(size: 20, weight: .bold))
                //                 Text("\(dateToString(date: userInformation.date))")
                Spacer()
                    .frame(height: 28)
                ZStack{
                    Image("receipt")
                        .frame(width: 276.5, height: 532.58)
                    VStack(spacing: 0){
                        //         if let image = userInformation.image {
                        if let image = UIImage(named: "1"){
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 263, height: 175)
                                .cornerRadius(20)
                                .padding(.top, 36.5)
                        }
                        
                        Text("\(receiptDateToString(date: userInformation.date)) 7777")
                            .padding(.top, 85)
                        DottedLineView()
                            .padding(.top, 18)
                        
                        HStack{
                            Text("상품명")
                            Spacer()
                            Text("\(userInformation.productName)")
                        }
                        .padding(.top, 21)
                        .padding(.horizontal, 70)
                        
                        Divider()
                            .foregroundColor(Color(hex: 0x979797))
                            .padding(.horizontal, 70)
                            .padding(.top, 7.5)
                        HStack{
                            Text("교환처")
                            Spacer()
                            Text("내 가족")
                        }
                        .padding(.top, 7.5)
                        .padding(.horizontal, 70)
                        Divider()
                            .foregroundColor(Color(hex: 0x979797))
                            .padding(.horizontal, 70)
                            .padding(.top, 7.5)
                        HStack{
                            Text("유효기간")
                            Spacer()
                            Text("\(dateToString(date: Calendar.current.date(byAdding: .year, value: 1, to: userInformation.date) ?? Date()))")
                        }
                        .padding(.top, 7.5)
                        .padding(.horizontal, 70)
                        HStack {

                            Spacer()
                            Canvas { context, size in
                                for line in print_sign() {
                                    var path = Path()
                                    path.addLines(line)
                                    context.stroke(path, with: .color(Color.black), lineWidth: 2)
                                }

                            }
                            .frame(width: 110, height: 73)
                            .background(Color(hex: 0xF5F5F5))
                            .cornerRadius(20)
                            .padding(.top, 12)
                            .padding(.trailing, 90)
//                            .opacity(0)

                        }
                        Spacer()
                        
                        
                    }
                    .font(.system(size: 15, weight: .bold))
                    
                }
                Spacer()
                    .frame(height: 65)
                ZStack{
                    Rectangle()
                        .frame(width: 330, height: 44)
                        .cornerRadius(22)
                        .foregroundColor(Color(hex: 0x139460))
                        .onTapGesture {
                            //공유 실행코드
                        }
                    
                    Text("교환증 가족과 공유하기")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                }
                Spacer()
                    .frame(height: 0)
                
                
            }
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "xmark.circle")
                        .font(.system(size: 30))
                        .onTapGesture {
                            viewController.currentPage -= 1
                        }
                        .padding(.trailing, 20)
                        .padding(.top, 40)
                }
                Spacer()
            }
            
        }
        .ignoresSafeArea()
    }
    
    func print_sign() -> [[CGPoint]]{
        var pointsArray: [[CGPoint]] = []
        if let savedArray = UserDefaults.standard.object(forKey: "smallsign") as? [[[CGFloat]]] {
            
            
            // 2. 2차원 배열로 변환합니다.
            for savedSubArray in savedArray {
                var subArray: [CGPoint] = []
                for pointArray in savedSubArray {
                    let point = CGPoint(x: pointArray[0], y: pointArray[1])
                    subArray.append(point)
                }
                pointsArray.append(subArray)
            }
        }
        return pointsArray
    }
    
    func dateToString(date: Date) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy. MM. dd"
        let dayday = formatter.string(from: date)
        return dayday
    }
    
    func receiptDateToString(date: Date) -> String{
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
        ReceiptView( userInformation: UserInformation(), viewController: ViewController())
    }
}
