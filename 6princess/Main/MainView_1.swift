//
//  Mainview_1.swift
//  princess
//
//  Created by 신상용 on 2023/05/06.
//

import SwiftUI

struct MainView_1: View {
    @StateObject var questiondata: QuestionData
    let dbHelper = DBHelper.shared
    var dataArray: [MyModel] = []
    
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<dbHelper.readData().count) {index in
                    if (dbHelper.readData()[index].complete == 0){
                        QuestionListRow_1(model: dbHelper.readData()[index], questiondata: questiondata)
                        
                    }
                    
                }
                
            }
            
            
//            Text("\(dbHelper.readData()[1].question)")
//            Button("dd"){
//                print(dbHelper.readData()[0])
//            }
        }
    }
    
}

struct MainView_1_Previews: PreviewProvider {
    static var previews: some View {
        MainView_1(questiondata: QuestionData())
    }
}
