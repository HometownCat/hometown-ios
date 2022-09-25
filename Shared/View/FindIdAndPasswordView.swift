//
//  FindIdAndPasswordView.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/08/31.
//

import Foundation
import SwiftUI

struct FindIdAndPasswordView: View{
    @Binding var findScreen: Bool
    @State var userId : String = ""
    @State var password : String = ""
    @State var email : String = ""
    @State var telNum : String = ""
    
    var body: some View{
        VStack{
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }.padding(.horizontal, Constants.medium)
        
        Spacer()
        
        CustomTextField(bindValue: $userId, label: "ID")
        
        CustomTextField(bindValue: $email, label: "이메일")
        
        CustomTextField(bindValue: $telNum, label: "전화번호")
        
        Spacer()
        HStack{
            Button(action: {}, label: {Text("인증하기")}).buttonStyle(.bordered)
                .padding(.trailing, 46)
       
        
            Button(action: {}, label: {Text("ID/PW 찾기")}).buttonStyle(.bordered)
                .padding(.leading, 40)
        }
        
        Spacer()
    }
    
}
