//
//  MainView_1.swift
//  princess
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct UserDefaultsDataView: View {
    var lines:[[CGPoint]] = []
    
    var body: some View {
        VStack{
            
            if let name = UserDefaults.standard.string(forKey: "name"){
                Text("\(name)")
            }
            if let productName = UserDefaults.standard.string(forKey: "productName"){
                Text("\(productName)")
            }
            if let UserDefaults_image = UserDefaults.standard.data(forKey: "selectedImage1"),
               let image = UIImage(data: UserDefaults_image){
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 329, height: 219)
                    .cornerRadius(20)
            }
            if let date = UserDefaults.standard.object(forKey: "date") as? Date {
                Text("\(date)")
            }
            
            
            //싸인    11
            //            if let savedArray = UserDefaults.standard.object(forKey: "sign") as? [[CGPoint]] {
            //                Canvas { context, size in
            //                    for line in savedArray {
            //                        var path = Path()
            //                        path.addLines(line)
            //                        context.stroke(path, with: .color(Color.black), lineWidth: 2)
            //                    }
            //
            //                }
            //                .background(Color(hex: 0xF5F5F5))
            //                .cornerRadius(20)
            //                .frame(width: 329, height: 219)
            //            }
            
            //싸인    22
            //            if let savedArray = UserDefaults.standard.object(forKey: "pointArray") as? [[[CGFloat]]] {
            //                var pointsArray: [[CGPoint]] = []
            //
            //                // 2. 2차원 배열로 변환합니다.
            //                for savedSubArray in savedArray {
            //                    var subArray: [CGPoint] = []
            //                    for pointArray in savedSubArray {
            //                        let point = CGPoint(x: pointArray[0], y: pointArray[1])
            //                        subArray.append(point)
            //                    }
            //                    pointsArray.append(subArray)
            //                }
            //            }
            
            
            Canvas { context, size in
                for line in print_sign() {
                    var path = Path()
                    path.addLines(line)
                    context.stroke(path, with: .color(Color.black), lineWidth: 2)
                }
                
                
                
            }
            .background(Color.gray)
            .cornerRadius(20)
            .frame(width: 329, height: 219)
            
            
            
            
            
            
        }
        
    }
    func print_sign() -> [[CGPoint]]{
        var pointsArray: [[CGPoint]] = []
        if let savedArray = UserDefaults.standard.object(forKey: "sign") as? [[[CGFloat]]] {
            
            
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
}

struct UserDefaultsDataView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsDataView()
    }
}
