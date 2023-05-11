//
//  DataUserDefaultsSave.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import Foundation
import UIKit
import SwiftUI

struct DataUserDefaultsSave {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var questiondata: QuestionData
    
    func lo_us_save () {
        UserDefaults.standard.set(userInformation.name, forKey: "name")
        UserDefaults.standard.set(userInformation.productName, forKey: "productName")
        if let imageData = userInformation.image!.jpegData(compressionQuality: 0.1){     //image를 압축하여 imageData라는 변수에 저장
            UserDefaults.standard.set(imageData, forKey: "selectedImage1")  //UserDefaults 에 imageData저장
        }
        UserDefaults.standard.set(false, forKey: "setting")
        UserDefaults.standard.set(userInformation.date, forKey: "date")
        UserDefaults.standard.set(questiondata.completeQuestionCount, forKey: "completeQuestionCount")
        
        //싸인 저장 코드
        var savedArray: [[[CGFloat]]] = []
        for subArray in userInformation.sign {
            var savedSubArray: [[CGFloat]] = []
            for point in subArray {
                savedSubArray.append([point.x, point.y])
            }
            savedArray.append(savedSubArray)
        }
        UserDefaults.standard.set(savedArray, forKey: "sign")
        //
        
        
    }
}
