//
//  remain.swift
//  princess
//
//  Created by 신상용 on 2023/05/05.
//

import SwiftUI

struct LocalDataView: View {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    var body: some View {
        ZStack{
            VStack{
                Text("\(userInformation.name)")
                Text("\(userInformation.date)")
                if let image = userInformation.image {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 329, height: 219)
                        .cornerRadius(20)
                }
                Text("\(userInformation.productName)")
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
                
                
                
                
                
            }
        }
    }
}

struct LocalDataView_Previews: PreviewProvider {
    static var previews: some View {
        LocalDataView(userInformation: UserInformation(), viewController: ViewController())
    }
}
