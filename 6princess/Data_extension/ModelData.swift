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
    @Published var isReceiptView: Bool = false
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
    @Published var showCompleteModalView: Bool = false
    @Published var questions: [String] = ["직장에서 보내는 나의 하루 일과를 기록해보세요",
                                          "내가 일하는 자리를 사진으로 남겨보세요",
                                          "가장 보람찼던 프로젝트를 육하원칙으로 정리해보세요",
                                          "일터에서 제일 좋아하는 공간을 사진으로 남겨보세요",
                                          "가장 좋아했던 동료는 누구였나요? 그 이유는 무엇인지 기록해보세요",
                                          "가장 싫어했던 동료는 누구였나요? 그 이유는 무엇인지 기록해보고 훌훌 털어버려요",
                                          "은퇴 후에도 꾸준히 연락할 사람 3명의 연락처를 즐겨찾기 해보세요",
                                          "동료들과 단체사진을 찍어보세요",
                                          "동료들에게 나의 장점 한 개씩을 물어보세요",
                                          "동료들에게 어떤 사람으로 기억되고 싶나요? 3개의 키워드로 적어보세요",
                                          "배우고 싶었는데 시도하지 못했던 운동은 무엇인지 떠올려보세요",
                                          "건강을 위해 위, 대장내시경이 포함된 종합검진을 예약하세요",
                                          "은퇴 후 가고 싶은 여행 계획을 세워보세요",
                                          "은퇴 후 생활 비용을 계산하고, 재정 계획을 세워보세요",
                                          "나만의 스트레스 해소 방법을 찾아 정리해보세요",
                                          "은퇴 후에 지속하고 싶은 취미를 정해보세요",
                                          "그 취미를 함께 할 사람 두 명을 직장에서 찾아보세요",
                                          "내 경험을 토대로 기여할 수 있는 봉사 활동을 찾아보세요",
                                          "첫 출근 했을 때의 나와 지금의 나는 어떻게 다른지 비교해보세요",
                                          "은퇴를 앞둔 스스로에게 대견하다고 축하 편지를 써보세요"]
}

