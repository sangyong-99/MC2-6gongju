//
//  ImagePickerView.swift
//  princess
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct ImagePickerView: View {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var isPickerShowing = false
    @Binding var selectedImage: UIImage?
    @State var isPickerImage = false
    @Binding var productName: String
    var body: some View {
        VStack(spacing: 0){
            if !isPickerImage {
                Rectangle()
                    .fill(Color(hex: 0xF5F5F5))
                    .cornerRadius(20)
                    .frame(width: 330, height: 219)
                    .shadow(color: Color(uiColor: .systemGray4), radius: 1, x: 0, y: 2)
                    .overlay(){
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 33))
                            .foregroundColor(Color(hex: 0x17B978))
                    }
                    .onTapGesture {
                        isPickerShowing = true
                    }
            }
            else if isPickerImage {
                if let image = selectedImage {
                    
                    ZStack {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 329, height: 219)
                            .cornerRadius(20)
                            .clipped()
//                            .onTapGesture {
//                                isPickerShowing = true
//                            }
                        
                        
                        Rectangle()
                            .frame(width: 329, height: 219)
                            .cornerRadius(20)
                            .opacity(0.000000001) //투명도 문제?
                            .onTapGesture {
                                isPickerShowing = true
                                print("ddd")
                            }
                    }
                }
                
            }
            
            
            
            
            Spacer()
                .frame(height: 36)
            TextField("받고싶은 선물", text: $productName)
                .padding(.leading, 34)
                .font(.system(size: 18, weight: .medium))
            Divider()
                .frame(minHeight: 1.5)
                .overlay(Color(hex: 0xD8D8D8))
                .padding([.leading, .trailing], 30)
                .padding(.top, 5)
            
            
            
            //            Button {
            //                isPickerShowing = true
            //            } label: {
            //                Text("Select a Photo")
            //            }
        }
        .ignoresSafeArea()
        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing, isPickerImage: $isPickerImage )
        }
        
    }
}


//if let imageData = image.jpegData(compressionQuality: 1.0){     //image를 압축하여 imageData라는 변수에 저장
//    UserDefaults.standard.set(imageData, forKey: "selectedImage1")  //UserDefaults 에 imageData저장
//}



struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView(userInformation: UserInformation(), viewController: ViewController(), selectedImage: .constant(UIImage(named: "1")), productName: .constant("커피머신"))
    }
}
