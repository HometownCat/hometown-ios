//
//  Custom_SecureField.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/10.
//

import Foundation
import SwiftUI

struct Custom_SecureField : View{
    @Binding var bindValue : String
    var label : String
    
    var body: some View{
        VStack{
        
        SecureField(label, text: $bindValue)
            .font(.system(size: 10))
            .padding()
            .background(Color(uiColor: .secondarySystemBackground))
            .cornerRadius(10)
        }.padding(.horizontal, Contstants.medium)
    }
}

