//
//  MainView_2.swift
//  princess
//
//  Created by 신상용 on 2023/05/07.
//

import SwiftUI

struct MainView_2: View {
    @StateObject var questiondata: QuestionData
    let dbHelper = DBHelper.shared
    var dataArray: [MyModel] = []
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<dbHelper.readData().count) { index in
                    if (dbHelper.readData()[index].complete == 1){
                        QuestionListRow_2(model: dbHelper.readData()[index], questiondata: questiondata)
                    }
                }
            }
        }
    }
}

struct MainView_2_Previews: PreviewProvider {
    static var previews: some View {
        MainView_2(questiondata: QuestionData())
    }
}
