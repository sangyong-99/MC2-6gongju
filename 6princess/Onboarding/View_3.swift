//
//  View_3.swift
//  princess
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI
import UIKit

struct View_3: View {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var selectedImage: UIImage?
    @State var productName: String = ""
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                Spacer()
                    .frame(height: 158) //가장위에 레이아웃
                HStack{
                    
                    Text("받고싶은 은퇴 선물의 \n이미지를 넣어주세요")
                        .font(.system(size: 30, weight: .semibold)) //폰트 사이즈
                        .lineSpacing(1)    //줄간격
                        .padding(.leading, 30)
                    Spacer()
                }
                HStack {
                    Text("상세하고 명확한 이미지를 권장합니다.")
                        .padding(.leading, 30)
                        .padding(.top, 7)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color(hex: 0x636366))
                    Spacer()
                }
                
                //imagePiker
                Spacer()
                    .frame(height: 70)
                ImagePickerView(userInformation: userInformation, viewController: viewController, selectedImage: $selectedImage, productName: $productName)
                Spacer()
                NextButtonView(viewCount: 3)
                    .onTapGesture {
                        userInformation.image = selectedImage
                        userInformation.productName = productName
                        viewController.currentPage += 1
                       //UserDefaults 삽입
                    }
                Spacer()
                    .frame(height: 52)
                    
            }
        }
        .ignoresSafeArea()
    }
}

struct View_3_Previews: PreviewProvider {
    static var previews: some View {
        View_3(userInformation: UserInformation(), viewController: ViewController())
    }
}
