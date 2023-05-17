//
//  MainImageView.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct MainImageSignView: View {
    var image: UIImage? = UIImage(named: "1")
    var productName: String = "골프채"
    var date: Date = Date()
    @State var imageSignView = true
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var filpped: Double = 0
    @State var ss: Bool = false
    var body: some View {
        VStack{
            ZStack {
                Rectangle()
                //                    .fill(Color(hex: 0xF5F5F5))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .frame(width: 329, height: 219)
                //                        .shadow(color: Color(uiColor: .systemGray4), radius: 1, x: 0, y: 2)
                    .overlay(){
                        ZStack {
                            if imageSignView{
                                //                                Image(uiImage: image!)    //연습용
                                Image(uiImage: userInformation.image!)      //실전용
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 329, height: 219)
                                    .shadow(color: Color(hex: 0xD1D1D6), radius: 1, x: 0, y: 2)
                                    .cornerRadius(20)
                                    .clipped()
                                //                                    .overlay(){
                                //                                        HStack {
                                //                                            Spacer()
                                //                                            VStack{
                                //                                                Spacer()
                                //                                                VStack{
                                ////                                                    Text(productName)         //연습용
                                //                                                                                                            Text(userInformation.productName)   //실전용
                                //                                                        .font(.system(size: 15, weight: .semibold))
                                //                                                    Text("\(day_print())")
                                //                                                        .font(.system(size: 12, weight: .semibold))
                                //                                                        .foregroundColor(Color(hex: 0xC7C7CC))
                                //                                                }
                                //                                                .padding(.trailing, 35.87)
                                //                                                .padding(.bottom, 6.07)
                                //                                            }
                                //                                        }
                                //                                    }
                                
                                
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
                                                //                                                Text(productName)         //연습용
                                                Text(userInformation.productName)   //실전용
                                                    .font(.system(size: 15, weight: .semibold))
                                                Text("\(day_print())")
                                                    .font(.system(size: 12, weight: .semibold))
                                                
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
                                    filpped += 180
                                    ss = !ss
                                }
                            //
                        }
                        .rotation3DEffect(Angle(degrees: filpped), axis: (x: 0, y: 1, z: 0), perspective: 0.5)
                        .animation(.linear, value: filpped)
                        .scaleEffect(x: imageSignView ? 1 : -1, y: 1)
                    }
            }
            
            
        }
    }
    
    
    func day_print() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy. MM. dd"
        
        //        let target_string = dateFormatter.string(from: date)          //연습용
        let target_string = dateFormatter.string(from: userInformation.date)    //실전용
        
        return target_string
    }
}

struct MainImageSignView_Previews: PreviewProvider {
    static var previews: some View {
        MainImageSignView(userInformation: UserInformation(), viewController: ViewController())
    }
}
