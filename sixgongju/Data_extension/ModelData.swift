//
//  ModelData.swift
//  princess
//
//  Created by 신상용 on 2023/05/04.
//

import Foundation
//import UIKit
import SwiftUI

class ViewController: ObservableObject {
    @Published var currentPage: Int = 1
    @Published var setting: Bool = false
    @Published var viewSelection: Bool = true
}

//struct Line {
//    var points = [CGPoint]()
//    var color: Color = .black
//    var lineWidth: Double = 2
//
//}



class UserInformation: ObservableObject {
    @Published var name: String = ""
    @Published var productName:String = ""
    @Published var date: Date = Date()
    @Published var image: UIImage?
    @Published var sign: [[CGPoint]] = []
    @Published var dday: Int = 0
}

class QuestionData: ObservableObject {
    @Published var viewresetcount = 0
    @Published var completeQuestionCount: Int = 0
}

