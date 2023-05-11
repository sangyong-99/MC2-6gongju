//
//  CardView.swift
//  sixgongju
//
//  Created by 신서연 on 2023/05/10.
//

import SwiftUI

struct CardView: View {
    var image: UIImage? = UIImage(named: "1")
    var productName: String = "골프채"
    var date: Date = Date()
    @State var userInformation: UserInformation
    @State private var rotationdegree: Double = 0
    @State var imageSignView = true
    //    @State var rotationValue = 0.0
    @State private var isFlipped = false
    var body: some View {
        VStack{
                ZStack {
                    Rectangle()
                    //                    .fill(Color(hex: 0xF5F5F5))
                        .cornerRadius(20)
                        .frame(width: 329, height: 219)
                        .shadow(color: Color(uiColor: .systemGray4), radius: 1, x: 0, y: 2)
                        .overlay(){
                                ZStack {
                                    if imageSignView{
                                    Image(uiImage: image!)    //연습용
//                                        Image(uiImage: userInformation.image!)      //실전용
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 329, height: 219)
                                        
                                        .cornerRadius(20)
                                        .clipped()
                                        .overlay(){
                                            HStack {
                                                Spacer()
                                                VStack{
                                                    Spacer()
                                                    VStack{
                                                        Text(productName)         //연습용
//                                                        Text(userInformation.productName)   //실전용
                                                            .font(.system(size: 15, weight: .semibold))
                                                        Text("\(day_print())")
                                                            .font(.system(size: 12, weight: .semibold))
                                                            .foregroundColor(Color(hex: 0xC7C7CC))
                                                    }
                                                    .padding(.trailing, 35.87)
                                                    .padding(.bottom, 6.07)
                                                }
                                            }
                                        }
                                    
                                    
                                    }
                                    else {          //imageSignView = false
                                        Canvas { context, size in
                                            for line in userInformation.sign {
                                                var path = Path()
                                                path.addLines(line)
                                                context.stroke(path, with: .color(Color.black), lineWidth: 2)
                                            }

                                        }
                                        .background(Color(hex: 0xF5F5F5))
                                        .cornerRadius(20)
                                        .frame(width: 329, height: 219)
                                        .overlay(){
                                            HStack {
                                                Spacer()
                                                VStack{
                                                    Spacer()
                                                    VStack{
                                                        Text(productName)         //연습용
//                                                        Text(userInformation.productName)   //실전용
                                                            .font(.system(size: 15, weight: .semibold))
                                                        Text("\(day_print())")
                                                            .font(.system(size: 12, weight: .semibold))
                                                            .foregroundColor(Color(hex: 0xC7C7CC))
                                                    }
                                                    .padding(.trailing, 35.87)
                                                    .padding(.bottom, 6.07)
                                                }
                                            }
                                        }
                                    }
                                    Rectangle()
                                        .frame(width: 329, height: 219)
                                        .cornerRadius(20)
                                        .opacity(0.00000001) //투명도 문제?
                                        .onTapGesture {
                                            imageSignView = !imageSignView
                                        }
                            }
                        }
                }
            
            
        }
    }
//    var body: some View {
//
//        VStack{
//
//            if isFlipped {
//                Canvas { context, size in
//                    for line in userInformation.sign {
//                        var path = Path()
//                        path.addLines(line)
//                        context.stroke(path, with: .color(Color.black), lineWidth: 2)
//                    }
//                }
//                .background(Color(hex: 0xF5F5F5))
//                .cornerRadius(20)
//                .frame(width: 330, height: 219)
//                .shadow(color: Color(uiColor: .systemGray4), radius: 2, x: 0, y: 2)
//                .overlay(){
//                    HStack {
//                        Spacer()
//                        VStack{
//                            Spacer()
//                            VStack{
//                                Text(productName)         //연습용
//        //                       Text(userInformation.productName)   //실전용
//                                    .font(.system(size: 15, weight: .semibold))
//                                Text("\(day_print())")
//                                    .font(.system(size: 12, weight: .semibold))
//                                    .foregroundColor(Color(hex: 0xC7C7CC))
//                            }
//                            .padding(.trailing, 35.87)
//                            .padding(.bottom, 6.07)
//                        }
//                    }
//                }
//            }
//            else{
//                if let image = userInformation.image {
//                    Image(uiImage: image)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 330, height: 219)
//                        .cornerRadius(20)
//                        .shadow(color: Color(uiColor: .systemGray4), radius: 2, x: 0, y: 2)
//                        .overlay(){
//                            HStack {
//                                Spacer()
//                                VStack{
//                                    Spacer()
//                                    VStack{
//                                        Text(productName)         //연습용
//                //                       Text(userInformation.productName)   //실전용
//                                            .font(.system(size: 15, weight: .semibold))
//                                        Text("\(day_print())")
//                                            .font(.system(size: 12, weight: .semibold))
//                                            .foregroundColor(Color(hex: 0xC7C7CC))
//                                    }
//                                    .padding(.trailing, 35.87)
//                                    .padding(.bottom, 6.07)
//                                }
//                            }
//                        }
//
//                }
//            }
//
//        }
//
//        .rotation3DEffect(Angle(degrees: isFlipped ? 180 : 0) , axis: (x: 0, y: 1, z: 0))
//
//        .onTapGesture{
////            if isFlipped {
////                rotationdegree += 180
////            }
//            withAnimation {
//                isFlipped.toggle()
//
//            }
//        }
//
//    }
    func day_print() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy. MM. dd"
        
//        let target_string = dateFormatter.string(from: date)          //연습용
        let target_string = dateFormatter.string(from: userInformation.date)    //실전용
        
        return target_string
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(userInformation: UserInformation())
    }
}
