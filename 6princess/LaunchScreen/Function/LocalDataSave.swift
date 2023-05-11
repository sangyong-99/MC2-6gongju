//
//  LocalDataSave.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import Foundation
import UIKit
import SwiftUI

struct LocalDataSave {
    @State var userInformation: UserInformation
    @State var viewController: ViewController
    @State var questiondata: QuestionData
    
    func us_lo_save () {
        if let name = UserDefaults.standard.string(forKey: "name"){
            userInformation.name = name
        }
        
        let completeQuestionCount = UserDefaults.standard.integer(forKey: "completeQuestionCount")
        questiondata.completeQuestionCount = completeQuestionCount
        
        
        if let productName = UserDefaults.standard.string(forKey: "productName"){
            userInformation.productName = productName
        }
        
        if let UserDefaults_image = UserDefaults.standard.data(forKey: "selectedImage1"),
           let image = UIImage(data: UserDefaults_image){
            userInformation.image = image
        }
        
        userInformation.sign = print_sign()
        
        if let date = UserDefaults.standard.object(forKey: "date") as? Date {
            userInformation.date = date
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            
            let today_string = dateFormatter.string(from: Date())
            let target_string = dateFormatter.string(from: userInformation.date)
            
            
            let calendar = Calendar.current
            let components = calendar.dateComponents([.day], from: Date(), to: userInformation.date)
            
            if let days = components.day {
                userInformation.dday = days + 1
            }
            
            if today_string == target_string {
                userInformation.dday = 0
            }
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

